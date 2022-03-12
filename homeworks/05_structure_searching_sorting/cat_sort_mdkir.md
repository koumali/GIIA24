---
layout:  page
title: Commandes basiques Linux II.
description: Approfondissment des commandes linux
date: 2021/04/08
permalink: /shell02/ 
lecturers:
  - name:  Anass Belcaid
---

<div class="center">
  <img src="{{'homeworks/05_structure_searching_sorting/linux_commands.jpg' | relative_url }}"
  width="400" height="200">
</div>



* (toc)
{:toc}



## Arborescence

1. Créer dans votre répertoire personnel les fichiers selon l'arborescence
   suivante:

  ```bash
  .
  ├── Python
  │   ├── TP1
  │   └── TP2
  │       ├── exo1
  │       └── exo2
  └── Unix
    ├── TP1
    │   ├── seance1
    │   │   ├── exo1
    │   │   └── exo2
    │   └── seance2
    └── TP2
  ```

  Dans la suite, vous devez être toujours dans le dossier racine et vous
    devez répondre a toutes les questions par une **seule commande**.

2. Placer vous dans le répertoire `Python/TP1`. Vérifiez que vous y êtes, puis,
   en une seule commande, placez vous dans le répertoire `Unix/TP2` en utilisant
   le chemin **relatif** du répertoire. Retourner dans `Python/TP1`, mais cette
   fois-ci, en utilisant le chemin **absolu**. Enfin, revenez a la racine de
   votre répertoire personnel.

3. Supprimer le répertoire **TP1** de **Python** avec la commande `rmdir`.
4. Supprimer le répertoire **TP2** de **Python** avec la commande `rmdir`. 
  > Pourqu'oi la commande a échouée
5. Déplacer le fichier exo1 dans le répertoire **TP1** et supprimer les
   répertoires **séance1** et **séance**.

   6. Renommer les fichiers **exo1** et **exo2** en **exercice1** et
      **exercice2**.
  7. Dessiner l'arborescence des fichiers contenus dans le répertoire.
    

## Investigation de fichiers.


Télécharger le dossier de simulation de cours <a href="{{'presentations/shell02/lecture4.zip' | relative_url }}"> lecture04.zip </a>. 

1. Que contient (sans l'ouvrir) le fichier `hamlet.txt`.
2. Combien de mot sont contenus dans ce fichier?
3. Afficher les 20 derniers lignes de ce fichier.
4. Le fichier `fruits.txt` contient la réponse des étudiants sur la question
   **Quelle est votre fruit préfère?**.
   1. Combien d'étudiants on complété cette survey.
   2. Combien de fruits on été liste dans cette survey
   3. Combien de personnes aiment le **blackberry**.
   4. (**) Quels 5 sont les fruits les plus populaires (les plus préfères).

## Tri 


Le fichier `temperature.tsv` contient la température de certains pays dans un
format **TSV(Tabulation Seperated format)**. La première colonne est le nom du
pays. Les prochaines sont les moyennes de temparature dans le mois je
**janvier** a **Avril**.


1. Lister ces pays selon la temperature de Janvier selon un ordre décroissant.
