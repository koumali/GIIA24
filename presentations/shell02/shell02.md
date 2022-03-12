--- 
marp : true 
author : A.Belcaid 
title : Commandes Shell 2.
description: Commandes plus avancées de Linux.
paginate: true
date: 2022-03-10
--- 

<style> img[alt~="center"] { display: block; margin: 0 auto; }
</style>

#  Commandes Shell II.

- A.Belcaid


--- 

# Table de Matière
1. Basiques vim
2. Manipulation de fichiers et dossiers.
3. Examinât ion de fichiers.
4. Recherche et Tri


--- 


## Basiques Vim


<style scoped > 
p{ font-size :40px }
table {
    width: 80%;
    font-size: 30px;
}
</style>


|    Key      | Description |
|----------|-----|
| **:w**  |  Sauvegarde fichier| 
| **wq** |  Sauvegarder et quitter.| 
| **q!**  |  Quitter sans sauvegarde.| 
| **i** |  Entrer dans le mode `insert`.| 
| **ESc**  | Revenir en mode normal.| 
| **hjkl** | se déplacer |
|  **u**   | undo (annuler)|
| **<C-r>** | Reprendre    |


--- 

## Exercices 

<style scoped > 
p{ font-size :40px }
table {
    width: 80%;
    font-size: 30px;
}
</style>


> Terminer les exercices de 1.1   a 1.6 dans **vimtutor**.

Si vous n'avez pas cette commande, installer **vim**.

```shell
sudo apt install vim
```


---- 

## Partie 2


<style scoped > 
p{ font-size :40px }
table {
    width: 80%;
    font-size: 30px;
}
</style>


|    Commande      | Description |
|----------|-----|
| mkdir  |  Création de répertoire.| 
| rmdir  |  Suppression de répertoire.| 
| cp  |  Copie de fichiers.| 
| mv  |  Déplacement de fichiers.| 
| rm  |  Suppression de fichiers.| 


---- 


### Exercice pratique

<style  > 
p{ font-size :15px }
table {
    width: 80%;
    font-size: 30px;
}
</style>


On se propose d'ecrire un projet **C++** pour tester la recherche binaire dans un tableau. La structure de notre projet est la suivante:

```bash
.
├── binary_search.cpp
├── binary_search.h
├── binary_search_test.cpp
├── CMakeLists.txt
├── HELP.md
├── README.md
└── test
    ├── catch.hpp
    └── tests-main.cpp
```


---

<style scoped > 
p{ font-size :15px }
table {
    width: 80%;
    font-size: 30px;
}
</style>

## Questions

1. Créer cette arborescence.
2. Supprimer le fichier `HELP.md`
3. Renommer le fichier `README.md` ad `readMe.md`
4. Lister les fichier par leur ordre de date  modification.
5. Déplacer le fichier `binary_search_test.cpp` au répertoire **test**.
6. On vient de changer d'avis, on veut remettre ce fichier a sa place.


---

## Partie 3


<style scoped > 
p{ font-size :35px }
table {
    width: 80%;
    font-size: 30px;
}
</style>


|    Commande      | Description |
|----------|-----|
| cat  |  Afficher le contenu d'un fichier.| 
| less  |  Contenu d'un fichier dans un **pager**.| 
| more  |  Similaire a less.| 
| head  | Afficher les premières ligne d'un fichier.| 
| tail  |  Afficher la fin d'un fichier.| 
| cw  |  Calculer les mots, caractères et taille.| 

---

## Exercice


<style scoped > 
p{ font-size :30px }
table {
    width: 80%;
    font-size: 30px;
}
</style>

Vous travailler dans un projet `Java` et vous laisser des lignes  de la forme **TODO** avant chaque fonction ou code **incomplet**.

Les fichiers de ce projet sont stockés dans dossier `projet`.

> Ecrire une commande pour afficher toutes les tâches dans ce projet.

```bash
cat "TODO" project/*   
```

----

## Compilation


<style scoped > 
p{ font-size :30px }
table {
    width: 80%;
    font-size: 30px;
}
</style>


|    Commande      | Description |
|----------|-----|
| `java className.java`  |  **Compiler** le programme java.| 
| `java className`  |  Exécuter le programme.| 
| gcc, python, ruby ... | Applicable a diffèrent langages|

> Compiler et executer le programme HelloWorld.java

> Ecire un programme avec **vim** puis compiler le!

> Comment peut on compiler toutes les classes  dans un projet?


---

## Partie 4 : Tri et élimination.


<style scoped > 
p{ font-size :30px }
table {
    width: 80%;
    font-size: 30px;
}
</style>


|    Commande      | Description |
|----------|-----|
| `sort`  |  Trier contenu d'un fichier.| 
| `uniq`  |  Éliminer les redondances **successive**!!.| 

----

## Sort

<style scoped > 
p{ font-size :30px }
table {
    width: 80%;
    font-size: 30px;
}
</style>

La commande sort est fréquemment utilises pour **trier** un texte ou **TSV**
selon différents ordre.  L'ordre peut être soit *lexicographique* ou *numérique**.

- Sans flag, elle tri selon un ordre **lexicographique**.

-  L'option `-n` force un tri **numérique** selon un champs.

- Le flag `-r` renverse l'ordre.

- le Flag `-k` spécifie un champs dans le cas (csv, tsv).

- le flag `-t` spécifie un **délimiteur**.


----


## Uniq


<style> 
p{ font-size :30px }
table {
    width: 80%;
    font-size: 30px;
}
</style>

La commande `uniq` élimine les redondances successives dans un fichier.


- Le flag `-c` afficher aussi le nombre de chaque occurrence.
- Le flag `-d` affiche seulement les redondances.
- Le flag `-u` affiche seulement qui sont uniques.


----


## Exercices


Le fichier `doctors.tsv` contient des entres séparés par **tabulation**.

```
Dr. Rajendra Prasad     January 26, 1950    May 13, 1962
Dr. S. Radhakrishnan        May 13, 1962    May 13, 1967
Dr. Zakir Hussain       May 13, 1967    August 24, 1969
Shri Varahagiri Venkata Giri        August 24, 1969 August 24, 1974
Shri Fakhruddin Ali Ahmed       August 24, 1974 February 11, 1977
Shri Neelam Sanjiva Reddy       July 25, 1977   July 25, 198
```
1. Trier ce fichier selon le nom des docteurs.
2. Afficher le résultat selon un ordre inversé.
3. Trier maintenant selon leur **année** de naissance. 
