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

## Exercice 2

### Sur l’onglet Summary d’une analyse de code, SonarCloud fournit 4 indicateurs. Quels sont-ils et quelles sont leurs utilités ?

* **Reliability** : list of bugs, A coding error that will break your code and needs to be fixed immediately
* **Maintainability** : list of code smells, Code that is confusing and difficult to maintain.
* **Security** : list of vulnerabilities, Code that can be exploited by hackers.
* **Security Review** list of security hotspots, Security-sensitive code that requires manual review to assess whether or not a vulnerability exists.

### À quoi sert l’indicateur Quality Gate ?

A Quality Gate is a set of measure-based Boolean conditions. It helps you know immediately whether your project is production-ready. If your current status is not Passed, you'll see which measures caused the problem and the values required to pass.

### Quelle est la différence entre les sections New code et Overall Code dans l’onglet Summary ?

New code :

l'analyse se fait uniquement sur le code qui vient d'être push

Overall code :

l'analyse se fait sur tout le code

### Y a-t-il des Code Smells ? Si oui, combien et pour quelle(s) raisons(s) ?

Oui, il y 3 code smells car il y a des paramètre de fonction qui ne sont jamais utilisé et une fonction qui fait exactement la même chose qu'une autre fonction (spend_money et spend_cash)

### Y a-t-il des Security Hotspots ? Si oui, combien et pour quelle(s) raison(s) ?

Oui, il y 1 sécurité hotspots car The python image runs with root as the default user. Make sure it is safe here.

Et que ça n'a pas été review.