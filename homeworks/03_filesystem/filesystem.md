---
layout:  page
title: Systèmes de fichiers linux.
description: Connaitre son systeme de fichiers.
date: 2021/03/24
permalink: /filesystem/ 
lecturers:
  - name:  Anass Belcaid
---


<div class="center">
  <img src="{{'homeworks/03_filesystem/linux_file_system.jpg' | relative_url }}"
  width="500" height="200">
</div>



* (toc)
{:toc}

## Introduction


L'objectif de ce **TP** est de se familiariser avec le **système de fichiers**
en utilisant l'outil  [Gparted](https://gparted.org/). Il permet de formater des
disques durs selon tous les formats discutés dans le cours.

> Aussi il est tres utile, on trouve des distribution boutable juste cet outil
qui permet de fixer des disques durs sans faire appel a un système
d'exploitation complet.

## GParted


Si vous travailler sur **ubuntu** voici la commande pour installer cet outil:

```bash
sudo apt install gparted

```

1. Lancer l'application et chercher tous les disque durs présents:

    
    <div class="center">
      <img src="{{'homeworks/03_filesystem/gparted_hdd.png' | relative_url }}"
      width="500" height="300">
    </div>

## USB

Pour la suite des opérations, il vaut mieux **continuer avec une clé USB**.


1. Insérer votre clé **USB**

> Ou est ce qu'elle est montée?

2. Lister les partitions de votre système d'exploitation.

```bash
fdisk -l
```

ou par **GParted

```bash
parted -l
```
> Identifier le fichier `/dev/???` qui correspond a votre cle USB.

``` 
Device       Start     End Sectors  Size Type
/dev/sdb1       64 4937743 4937680  2.4G Linux filesystem
/dev/sdb2  4937744 5070863  133120   65M EFI System
/dev/sdb3  5070864 5071463     600  300K Microsoft basic data

Disk /dev/sdb: 3.73 GiB, 4005560320 bytes, 7823360 sectors
Disk model: USB DISK Pro
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
```

Dans l'exemble précédant, la clé usb se trouve dans **/dev/dsb**. On va utiliser
ce fichier pour pouvoir mainipuler la clé. 

### Formater la clé.

On va utiliser la commande `parted` pour formatter la clé.

```shell
parted /dev/sdb
```

On entre maintenant dans un environnement **Gparted** pour traiter ce dossier.


```bash
mklabel new_disk
```


Maintenant on va utiliser `mkpart` pour creer une nouvelle **partition**. Vous
allez voir un ensemble de question qui vous demande le type de votre clé.

```shell
(parted) mkpart                                                            
Partition type? primary/extended? primary 
File system type? [ext2]? ext4 
Start? 1 
End? 20290
```

Une fois la creation de cette partition est terminée, vous pouvez afficher ces
details:

```shell
print
```

### Formater la clé

Maintenant vous pouvez **formater** la nouvelle partitition créée en utilisant
**mkfs.ext4** (make file system ext4)

```shell
mkfs.ext4 /dev/sdb
```

Vous pouvez donner **un nom** a votre partition par:

```shell
e4label /dev/sdb ma-cle
```


### Monter la partition

Finalement, on peux monter cette partition:

```shell
sudo mkdir /mnt/ma_cle    # creer un dossier pour la contenir
sudo mount /dev/sdb  /mnt/ma_cle   # monter la cle dans ce dossier
```

Pour etre sur que vous avez monté votre clé, on utilise l'utilité **df** pour
lister tous les systèmes de fichiers:

```shell
df -hT
```


### Montage automatique

Ca serait un peu gênant, si on devait répéter cette commande a chaque fois qu'on
cherche a monter notre clé. Dans le système **linux** un fichier spécial
`/dev/fstab` contient tous les systèmes de fichiers qui doivent être monté
automatiquement.


Ainsi on ajoute la ligne suivante dans ce fichier:

```shell
/dex/sdb /mnt/ma_cle ext4 defaults 0 0
```


## Contrôle Matériel

Dans cet exercice, on utilise la puissance que linux offre en representant tous
en un **fichier**.  Ainsi on se propose de changer l**eclairage** (brightness)
de votre système juste en controllant le fichier qui la represente!!!.


1. Taper la commande suivante pour obtenir la liste entre matériels:

    ```bash
    ls /sys/class
    ```
2. Identifier le fichier responsable pour l'**éclairage**.

3. Changer cette valeur et confirmer que celle ci a bien changé.


