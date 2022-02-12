---
layout:  page
title: Instllation Gnome
description: Instllation d'une interface graphique pour son VM.
date: 2021/03/11
permalink: /gnome/ 
lecturers:
  - name:  Anass Belcaid
---


<div class="center">
  <img src="{{'presentations/gui/gnome_desktop.png' | relative_url }}"
  width="600" height="300">
</div>



* (toc)
{:toc}

## Introduction

L'objectif de ce **TP** est de compléter l'installation de votre machine
virtuelle par un environnent graphique et un gestionnaire de session. A la fin
vous devez être capable de:



- Se connecter a **au moins deux** environnements.

- Utiliser les applications offertes par défaut dans l'environnement.

- Créer et gérer d'autres utilisateurs qui peuvent utiliser cette machine.


## Environnent principal


Pour votre environnement principale, vous pouvez choisir entre les trois
session **recommandés** pour des débutants.

 

<table>
<thead>
<tr class="header">
<th>Gnome</th>
<th>KDE</th>
<th>XFCE</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<img src="{{ site.url }}{{ site.baseurl}}/homeworks/02_gnome/gnome_desktop.png" widht="100" height="200">
</td>

<td>
<img src="{{ site.url }}{{ site.baseurl}}/homeworks/02_gnome/kde.png" widht="100" height="200">
</td>

<td>
<img src="{{ site.url }}{{ site.baseurl}}/homeworks/02_gnome/xfce.jpg" widht="100" height="200">
</td>
</tr>
</tbody>
</table>

> Pour Decider votre espace prefere, lisez l'article suivant : [Choix
distributions](https://tecadmin.net/best-linux-desktop-environments/)


### Installation Gnome

Pour installer tout le bureau gnome_desktop

- Ubuntu: 
   ```bash
   sudo apt install gnome-shell ubuntu-gnome-desktop
   ```
- Fedora:
    ```bash
    sudo dnf install @base-x gnome-shell gnome-terminal nautilus
    ```
- Arch:
    
    ```bash
    sudo pacman -S gnome
    ```

## Installation Kde

Pour installer le bureau **KDE**:


- Ubuntu: 
   ```bash
   sudo apt install kubunut-desktop
   ```
- Fedora:
    ```bash
     sudo dnf groupinstall -y "KDE Plasma Workspaces"
    ```
- Arch:
    
    ```bash
    sudo pacman -S plasma-desktop
    ```


## Installation XFCE

Pour installer le bureau **XFCE**:


- Ubuntu: 
   ```bash
   sudo apt install xubunut-desktop
   ```
- Fedora:

    ```bash
    sudo dnf groupinstall -y "Xfce Desktop"
    ```
- Arch:
    
    ```bash
    sudo pacman -S xfce xfce-goodies
    ```

## Options

Si vous avez choisi **Gnome**, installer l'outil de personnalisation
**Gnome-tweek-tool**

```bash
sudo apt install gnome-tweak-tool
```
## Gestionnaire de connexion

Tester et vérifier votre gestionnaire de connexion en fonction de votre choix
d'environnements.


## Connexion / Déconnexion

Essayer maintenant de vous connecter et déconnecter de votre machine.

## Utilisation des applications

Lancer l'application `nautilus` qui est l'application par défaut de gestion de
fichiers. 

> Si vous avez choisi autre bureau, voici la liste des gestionnaires de fichiers:

- **KDE**: daulphin
- **XFCE** : thunar

## Questions d'approndissement:


1. Chercher puis installer un autre bureau léger : (**MATE**, **cinnamon**,
   **i3**).
2. Chercher un moyen pour vous connecter directement (sans le besoin d'entrer un
   mot d'utilisateur et un mot de passe).

3. Tester les commandes de :

    - Arrêter le système.
    - Suspendre le système.
    - Redémarrer le Système
4. Essayer de creer le document word suivant:

```bash
/home/yourname/Documents/mon_premier_document.doc
```

