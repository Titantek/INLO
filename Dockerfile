FROM python:3.9

RUN adduser nonroot

WORKDIR /code

COPY ./setup.py /code/setup.py

COPY ./requirements.txt /code/requirements.txt

COPY ./README.md /code/README.md

COPY ./src /code/src

COPY ./controller /code/controller

USER nonroot

RUN pip install /code

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]
