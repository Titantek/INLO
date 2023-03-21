# INLO

software industrialization

## Exercice 1

### Quelles étapes sont réalisées par cette action ?

Lors d'un push ou pull request sur la branche main cela crée un job build qui va installer les dépendances et lancer flake8 (linter) et les tests avec pytest

### Une étape est définie au minimum par 2 paramètres, lesquels sont-ils et à quoi servent-ils ?

par un nom et une liste d'instruction

### La première étape contient un paramètre ‘with’, a quoi sert-il ?

le with permet de déclarer des variables d'environnement
Cela spécifie la version de python utilisée
[doc](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idstepswith)


