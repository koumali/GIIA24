---
layout:  page
title: Commandes basiques Linux.
description: Utilisation de quelque commandes de base sous linux.
date: 2021/04/02
permalink: /shell01/ 
lecturers:
  - name:  Anass Belcaid
---

<div class="center">
  <img src="{{'homeworks/04_basic_commands/linux_background.png' | relative_url }}"
  width="500" height="300">
</div>




* (toc)
{:toc}


## ls

1. Utiliser la commande `ls` pour montrer le contenu de votre **home**.
2. Comment on peut modifier cette commande pour qu'elle n'affiche qu'un résultat
   par ligne.
3. Essayer d'afficher le contenu du répertoire **/root/**.
  - Que c'est il passé.

4. Obtenez la date de modification de chaque fichier dans votre `home`.
5. Afficher votre dossier **courant**. 
6. Changer votre dossier a `/etc/`
7. Afficher tous les **dossiers** de ce répertoire.
8. Comment peut on changer le résultat pour qu'il soit trié alphabétiquement.
9. Trier maintenant le résultat par **taille**.

## find

Afin de compléter ce fichier créer les fichiers suivants dans un certain
répertoire de votre choix.

```
src/ball.cpp
src/player.cpp
src/match.cpp
src/game.cpp
src/readMe.txt
header/ball.hpp
header/player.hpp
header/match.hpp
header/game.hpp
CMakeLists.txt
```

1. Utiliser la commande `find` pour chercher le fichier **ball.cpp**
2. Modifier votre commande pour trouver les deux fichier:
  1. **ball.cpp**
  2. **ball.h**
3. Chercher comment peut on afficher le contenu du src par la commande `find`.

4. Afficher maintenant que les **répertoires**.
5. Afficher tous les fichiers texte (portant l'extension **.txt**)
6. Chercher dans votre systèmes tous les fichiers qui dépassent **10M**

## locate

1. Afficher tous les fichiers avec l'extension **.conf** dans votre système en
   utilisant la commande **locate**.
2. Calculer le nombre de ces fichiers.
3. Chercher l'option qui vous permet d'afficher des informations sur la **base
   d'indexation** de Linux.


## date

Dans cette section, vous allez pratiquer l'utilisation de la commande `date`
pour afficher et manipuler des date de votre système.


1. Taper cette commande pour obtenir la date actuelle de votre système.
2. Maintenant on suppose qu'on as fichier `dates.txt` qui contient different
   dates. 

```
07/20/1984
05/01/1981
05/30/2021
07/27/2017
09/21/2019
03/15/2007
```

  - Afficher la **date** de chaque jour mentionnée dans ce fichier.

3. Maintenant on veut changer le **format** de l'affichage de la date selon le
   modèle suivant:
   ```
   Annee: 1984, Mois: 07, Jour=20
   ```
  
  - chercher l'**option** qui vous permet de réaliser ceci.

4. On veut maintenant a afficher la date dans le format suivant:

  ```
  DATE : 01/14/22
  TIME : 10:10:30
  ```

5. Afficher que le **nom** du mois de chaque date.

6. Changer maintenant la date de votre système a "14 janvier 2020"
7. Chercher une option pour afficher la date de l'**année dernière**.
8. Afficher la date de l'année prochaine?
8. Quel sera la date précise de **vendredi prochain**.
9. Utiliser cette fonction pour afficher la date de **dernière modification** du
   fichier `dates.txt`.
10. (* * *) Combien de seconds se sont passées depuis **lundi précédant**?
