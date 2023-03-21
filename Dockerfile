FROM alpine:latest as security_provider
RUN addgroup -S nonroot \
    && adduser -S nonroot -G nonroot

FROM python:3.9
COPY --from=security_provider /etc/passwd /etc/passwd
USER nonroot

WORKDIR /code

COPY ./setup.py /code/setup.py

COPY ./requirements.txt /code/requirements.txt

COPY ./README.md /code/README.md

COPY ./src /code/src

RUN pip install /code

COPY ./controller /code/controller

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]
