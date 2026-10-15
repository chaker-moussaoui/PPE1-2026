# Journal de bord du projet encadré

## 1 Octobre (TP git et manipulation de fichiers)

Ayant déjà manipulé auparavant les commandes de base en bash, ces exercices ont été pour moi l'occasion de réviser mes connaissances en ligne de commandes.

Mais pas que.

J'ai d'une part découvert la fonction des accolades { } lorsqu'il s'agissait de parcourir les fichiers de plusieurs dossiers à la suite.

D'autre part, j'ai pris conscience que le joker * ne fonctionnait pas exactement de la même manière que dans les regex, en python par exemple.

```bash
mv .*.ann ann/ # cette commande permet de déplacer les fichiers .ann qui commencent par un .
mv *.ann ann/ # alors que mettre simplement l'étoile signifie tous les fichiers .ann
```

## 15 Octobre (suite git et scripts)

Pour l'exercice git, je me suis arrêté à la question 2.B car je ne comprends pas pourquoi on doit récupérer le SHA du commit "I AM ERROR" et l'associer avec reset.
Si on fait un reset sur ce SHA, on retourne alors vers le commit "I AM ERROR", mais on ne le défait alors pas. D'où mon incompréhension de la question.

Néanmoins, j'ai constaté que si on fait un reset --hard sur un commit ancien, alors tous les commits qui l'ont suivi sont annulés. 

Pour ce qui est de l'exercice sur les scripts, voici comment j'interprète le script de la dernière page du diapo :
Globalement, ce script sert à identifier dans un texte les lignes qui ressemblent à des URLs et en fait le décompte.
Plus dans le détail, ce script commence par vérfier si un seul argument est donné. Si oui, le script continue, sinon il s'arrête.
Puis, à l'aide d'une boucle while, le fichier est lu ligne par ligne tout en vérifiant si la ligne en question est une URL valide.
Finalement, le script affiche le nombre d'URLs détectés et le nombre du reste de ligne différentes.


 
