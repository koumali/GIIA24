---
layout:  page
title: Instllation Linux.
description: Instllation de linux avec une machine virtuelle (virtuelle box).
date: 2021/02/25
permalink: /installation/ 
lecturers:
  - name:  Anass Belcaid
---


<div class="center">
  <img src="https://www.informatiweb.net/images/tutoriels/logos/fr/thumbs/virtualbox-installation-sous-linux.jpg">
</div>



* (toc)
{:toc}

## Objectif

L'objectif de ce **TP** est d'installer le logiciel [virtualBox](https://www.virtualbox.org/wiki/Windows%20build%20instructions)  dans votre machine. Ce logiciel va vous permettre d'installer des **machines virtuelles**. Cette machine  vous donnera accès a l'utilisation directe de **linux** sans avoir l'installer directement dans votre **disque dur**. 


> Les fichiers dont vous aurez besoin ( logiciel virtualBox et les
ISO) vous seront donne dans un support **USB**.


- Si votre machine ne dispose pas de plus de **1GB** de RAM et moins de
**5GB** d'espace de stockage, vous ne pouvez pas compléter ce TP. Il faudra
travailler avec une machine de l'**atelier**.


## Installation VirtualBox


Les instructions dans cette section seront adoptées selon votre système d'exploitation. Essayer de suivre le tutoriel qui correspond a votre machine.

> Une fois que vous avez installer **virtualBox**, vous pouvez procéder a la
section suivante.


### Mac OSX

1. Il suffit de double cliquer sur le fichier:

    ```
    VirtualBox-x.x.x-xxxxx-OSX.dmg
    ```

2. Double cliquer sur le **paquetage** `VirtualBox.pkg` puis suivez les instructions.


3. Lancer l'application une fois, qu'elle est installée. Vous pouvez la
   **garder** dans le dock pour y accéder facilement dans les prochaines
   lancements.



### Windows

1. Double cliquez sur l'exécutable
    
    ```
    VirtualBox-x.x.x-xxx.Win.exe
    ```
Donner les **permissions** pour pouvoir installer le logiciel.

2. Verification de **VT-x**

    Virtualbox ne demande pas l'option **VT-x** ou **AMD-V** ( sauf pour
    la version `guestss` dans 64-bit).
    Vous pouvez vérifier si votre machine supporte la **virtualisation**
    en telechargent le logiciel [Hardware_Assiste Virtualizqaiton
    Detection tool](http://www.microsoft.com/en-us/download/details.aspx?id=592).

    - Si le logiciel vous indique que `this computer does not have
    hardare-assisted virtualizaiton`, alors vous devez l'activer dans le
    **bios**.

    - **Redémarrer** votre machine, et allez dans le BIOS pour chercher
    l'option
    ```
    Virtualizaiton Technology (Vt-x)
    ```
    - Une fois que cette option est activée, vous êtes bien prépare pour
    installer Linux.

## Linux 

Allez chercher **virtualbox** dans votre gestionnaire de paquetage ( On va on
parler dans des lectures suivantes).

- Par exemple, si vous êtes dans **Ubuntu**:

```shell

sudo apt install virtualbox
```
- Si vous etes, en **Fedora**:

```shell
sudo dnf install VirtualBox-6.1
```

- Sur **Arch**:

```shell
sudo pacman -S virtualbox
```

Pour vérifier si votre machine possède l'option de visualisation, taper
la commande:


```shell
egrep '(vmx|svm)' /proc/cpuinfo
```

Si vous voyez **au moins** une ligne contenant **vmx** ou **svm**, c'est que
votre machine, supporte la visualisation.


## Créer la machine virtuelle.

Dans cette section, nous avons installer une **machine virtuelle** qui
contient la distribution classique [ubuntu](https://ubuntu.com).

> On va installer la version **Server Edition**, puisqu'elle est plus
**rapide** et ne contient aucun **Desktop**. Ca va vous donner aussi la
possibilité d'administrer votre système en utilisant la ligne de commande.


- Chercher l'image **ISO**

```shell
ubuntu-18.04.3-server.amd64.iso
```

Copier la dans un dossier de votre choix.

### Nouvelle machine virtuelle.


Dans le questionneur **VirtualBox**, cliquer sur **New** (cercle bleu)

<div class="center">
  <img src="https://nsrc.org/activities/agendas/en/cloud-virtualization/cloud-virt/en/intro-virtualization/ex-virtualbox-install/buttons.png">
  <div class="figcaption">
  Création d'une nouvelle machine.
  </div>
</div>


Le premier écran vous demande le nom de votre **système d'exploitation**.

- Name: ubuntu-1 ( vous pouvez modifier ce nom)
- Type: Linux
- Version: Ubunutu 64-bit
- Cliquer **next**.


