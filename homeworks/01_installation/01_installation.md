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
  <img src="{{'/homeworks/01_installation/virtualbox-installation-sous-linux.png' | relative_url }}">
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

### Linux 

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
  <img
  src="{{'homeworks/01_installation/buttons.png' | relative_url }}">
  <div class="figcaption">
  Création d'une nouvelle machine.
  </div>
</div>




1. Le premier écran vous demande le nom de votre **système d'exploitation**.

    - Name: ubuntu-1 ( vous pouvez modifier ce nom)
    - Type: Linux
    - Version: Ubunutu 64-bit
    - Cliquer **next**.

2. Le prochain écran vous aide a décider la taille de **votre mémoire**.
Choisissez **521Mb**.

    > Si votre machine est puissante et possede assez suffusement de RAM, vous
    pouvez choisir (**1024 MB**).

3. L'écran suivant vous demande de choisir un **disque dur**. Selectionner
   `Create a virtual hard drive now` puis choisissez **next**.
    - Sélectionner l'option par defaut **VDI**( *VirtualBox Disk Image*)
    puis next.
    - Choisissez l'option **Dynamically allocated**  puis next.

    > Accepter l'option par défaut de **8GB**. Ceci n'as pas d'importance
    au moment qu'on as choisi l'option **dynamique** car cette taille peut
    changer maintenant.

**Maintenant votre machine est crée**.

## Insérer le CD virtuel

Quand vous lancer une **VM** la première fois, **VirtualBox** vous demande
d'insérer une **CD ROM**. Cependant, nous allons le réaliser **Manuellement**
pour apprendre le système de configuration.


Avant de lancer la machine virtuelle (VM), allez dans `Settings`
(button orange), puis choisir l'option `Storage`, vous devez voir:

    - Controller: IDE
    - .. Emtpy (icon CD)
    - Controller : SATA
    - ... ubuntu-1.vdi

Cliquer sur l'acon du CD, vous devez voir:

    - Attributees:
    - CD/DVD Drive: IDE Secondary Master, and another CD icon

    > Choisissez l'option **Choose a virtual CD/DVD disk file**:
    
<div class="center">
      
  <img src="{{'/homeworks/01_installation/choose-cd-image.png' | relative_url }}">
      <div class="figcaption">
      Choix du disque dur virtuel dans la virtualBox.
      </div>
</div>
    

En utilisant l'explorer de windows, choisir l'emplacement ou vous avez
sauvegarder l'image **ISO**.

Maintenant vous devez voir:

- Controller : IDE
- ..ubuntu-18.04-3server-amd64
- Controller : SATA
- ..ubuntu-1.vdi


## Lancer la machine virtuelle

Choisir la **VM** et cliquer sur la flèche verte pour commencer la
machine. Vous allez voir certains **avertissements** comme:

> You have Auto capture keyboard option turned on ... You can press the host key at any time to uncapture the keyboard and mouse and return them to normal operation ... The host key is currently defined as Right Ctrl"

L'installation d'Ubuntu commence alors:

1. Cliquer sur **F3** pour sélectionner un clavier
2. Cliquer sur **F4**, puis choisir `Install a minimal virtual machine`

    <div class="center">
      <img src="{{'/homeworks/01_installation/modes.png' | relative_url }}">
          <div class="figcaption">
      Choix du mode d'installation
          </div>
    </div>


> Cette option va choisir le nombre **minimum** de paquetage a installer.


- Sélectionner `Intallation Ubuntu Server` du menu, puis suivez les messages
guidées,
    - Utiliser `Tab` pour se déplacer.
    - Utiliser `Enter` pour choisir  une option.

- Choisir un nom a votre machine `hostname`
- Choisir un nom d'utilisateur `username`
- Choisir une mot de passe.

Pour les options qui suivent, je vous recommande:

1. Encrypt your home directory? **No**
2. Partitioning method: **Guided - use entire disk**.

    <div class="center">
          
      <img src="{{'/homeworks/01_installation/partitioning.png' | relative_url }}">
          <div class="figcaption">
          Choix du disque dur virtuel dans la virtualBox.
          </div>
     </div>

3.Choisissez **no automatic updates**.
4. Dans l'option `Choose software to install`: Choisir seulement
    **OpenSSH Server**.

5. `Install GRUB boot loader to the master boot record?` : **Yes**.


## Redémarrage

Une fois l'installation est terminée, vous pouvez **redémarrer** votre machine.

> Essayer d'enlever le disque virtuel dans **Setting > Storage**.

Après quelque secondes, vous devez voir une console qui demande votre **nom d'utilisateur** et **mot de passe**.

## Console (1er essai)


**Feliciations**, vous etes maintenant devant une console linux. Vous
pouvez  permuter entre plusieurs consoles en utilisant:

```bash
Ctrl-Alt-F1, ..., Ctrl-Alt-F6
```

Voici quelque commandes que vous pouvez essayer:


```bash
uptime        # combien de temps la machine est en cours
uname -a      # Information sur le kernel utilise
df   -h       # Information sur le disque dur disponible
ls /          # Lister le contenu du dossier racine.
```

## Curseur Souris

Si vous voulez utiliser votre souris, vous devez installer le packetage `gpm`.
Voici les commandes pour les installer


```bash
sudo apt update      # Mise a jour du system
sudo apt install gmp # installation du packetage
```

A ce stade, vous pouvez **Copier/Coller** dans votre VM en utilisant
l'option droite de votre souris.


## Fermeture de la machine.

Dans **VirtualBox** choisir l'option `Machine > ACPI shutdown`, une
fois choisi, cette option va **fermer** la machine.

> Si rien ne se passe, c'est que votre server n'as pas de daemon **acpi**,
il suffit juste de l'installer


```bash
sudo apt install acpid
```

## Exercice optionnelles
