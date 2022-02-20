---
marp : true
author : A.Belcaid
title : Système de fichiers Linux
description: Connaitre la strucuture de son fichier de système.
paginate: true
date : 2022-03-04
---
<style>
img[alt~="center"] {
  display: block;
  margin: 0 auto;
}
</style>

#  Système de fichiers

- A.Belcaid

---

<!-- _font-size:40px -->
## Table de matière

-  Connaitre les différentes versions de **Unix** (rappel)
- Maitriser la structure du système de fichier Linux.
- Se familiariser avec les fichiers importants.
- Connaitre les différents système de fichiers.
- Introduction a la notion des **devices**.

---

## Version Unix, Linux, et BSD

Comme mentionne dans l'introduction, il existe Unix, Linux et BSD distributions.
Dans ces premiers slides, on rappelle les plus important et a quoid il sert:

|     OS |            Description           |
|-------:|:--------------------------------:|
| Darwin | Noyau principal du system Mac Os |
|FreeBSD | OS simple basé sur BSD           |
| OpenBSD|        OS centre sur la sécurité |
| NetBSD | OS porable base sur BSD          |

---

## Systèmes Linux

|     OS |            Description           |
|-------:|:--------------------------------:|
| Red Hat | OS populaire **comerciel** par Red Hat |
|Fedora | Distribution libre base sur Red Hat   |
| CentOs| **Clone** libre de Red Hat |
| Debian | La ditribution populaire pour sa stabilité          |
|  Ubunutu   | Distribution simple basé sur Debian                |
| Suse Entreprise | Distribution commerciale sr Novell,Inc|
|OpenSUSE | Distribution libre base sur Suse ent|


--- 

## Systèmes  Unix


|     OS |            Description           |
|-------:|:--------------------------------:|
| AIX  | Platforme **propriétaire** d'**IBM** |
|HP-UX| Platforme **propriétaire** de **Hewlett Packards**   |
| Solaris|Platforme **propriétaire** de **Sun Microsystems**   |
| OpenSolaris | Version libre de Solaris       |


---

## Dossiers importants

La plupart des systèmes **Unix**, **Linux** et **BSD** partagent une structure de dossiers. On va lister les dossiers les plus importants:



|     Répertoire |            Rôle           |
|-------:|:--------------------------------:|
| `/` | Dossier **racine**  |
| `/boot` | **noyau** linux et fichiers de chargements|

> Ce dossier contient  les fichiers nécessaires pour le démarrage du système.

---


## Dossiers des programmes

Les dossier suivants continent les **exécutables** des programmes installes dans
le système:


|     Répertoire |            Rôle           |
|-------:|:--------------------------------:|
| `/bin` |   |
| `/usr/bin` | Executables du système|

> Pour afficher votre liste des dossiers **suivi** par linux

```
 echo $PATH
```

---

## Programmes Administratives

Le programmes dans les dossiers suivants sont souvent Utilises par l'admin
**root**.

|     Répertoire |            Rôle           |
|-------:|:--------------------------------:|
| `/sbin` |   |
| `/usr/sbin` | Executables destinee a root|

> Il se peut que ce dossier soit **redirigé** vers `bin`.

---

## Autres dossiers

|     Répertoire |            Rôle           |
|-------:|:--------------------------------:|
| `/opt` |  programmes optionels (pas installé naturellement)  |
| `/etc` | Fichiers de **configuration**|
| `/home`  | Dossier des **utilisateurs** |
| `/root` | Dossier du super utilisateur **root** | 
| `/lib`  | Bibliotheques **partagées** entre programmes|
| `/media` | Fichiers montés (comme une usb)|
| `/var` | Donnés qui changent souvent (comme log)|

---

## Avantages 

Ces répertoires sont organises de manière **modulaire** pour séparer les différents composants du **système d'exploitation**.

- Le répertoire `/home/` est généralement votre espace.

> Tous les dossiers a l'extérieur de ce dossier sont accessible seulement a l'administrateur `root` afin de protéger tous les fichiers du système.

---

## Fichiers importants

En plus de ces dossiers communs entre ces systèmes, ils partagent aussi des
**fichiers** importants.


|     Fichier |            Rôle           |
|-------:|:--------------------------------:|
| `/etc/passwd` |  Configurations des comptes d'utilisateurs  |
| `/etc/shadow` | Mot de passe **cryptés** des utilisateurs|
| `/etc/group`  | Configuration des **groupes** |
| `/etc/fstab` | **Montage** des systèmes de fichiers| 

---

## Fichiers importants

|     Fichier |            Rôle           |
|-------:|:--------------------------------:|
| `/etc/mtab` |  Systeme de fichiers montés  |
| `/etc/exports` | configuration de partage **NFS** |
| `/etc/hosts` | Résolution **statique** des noms de machines|
| `/etc/host` | Nome de votre machine | 
| `/etc/hosts.allow` |  Machines de confience |
| `/etc/resolve.conf` | Confgiruation DNS |
| `/etc/issue` | Message dans login shell|


---

## Fichiers importants

|     Fichier |            Rôle           |
|-------:|:--------------------------------:|
| `/etc/profile` | configuration environnement shell |
| `/etc/shells` | les **shell** connetables|

```bash
more /etc/shells
/bin/sh
/bin/bash
/usr/bin/git-shell
/bin/zsh
/usr/bin/zsh
```

----

## Fichiers importants

|     Fichier |            Rôle           |
|-------:|:--------------------------------:|
| `/etc/sudoers` | Utilisateurs Permis a utiliser **su** |
| `/var/log/messages` | messages du log du noyau |
| `/var/log/syslog` | message log de **syslog** |

Cette une liste **brève** de ces fichiers communs. Ce qu'il faut retenir est que `/etc` est réservé pour la configuration.


---
## Descriptions fichiers de systèmes


- [EXT 2-4](https://fr.wikipedia.org/wiki/Extended_file_system): Systeme de fichiers des OS linux. Au temps actuel, la version par defaut est **ext4**.

- [JFS](https://fr.wikipedia.org/wiki/JFS): Système de fichiers journaliste de **IBM**.

- [HFS+](https://fr.wikipedia.org/wiki/Hierarchical_File_System): Systeme de fichiers **hierarchique** d'Apple. 

- [UFS](https://fr.wikipedia.org/wiki/Unix_File_System): Systeme de fichier Unix utilisés dans les distributiosn **BSD**.

- [ZFS](https://fr.wikipedia.org/wiki/ZFS) Systeme de fichier robuste par **Sun
Microsystems** utilisé dans **Solaris**.

---

## Systèmes de fichiers

<style scoped>
table {
    width: 80%;
    font-size: 20px;
}
</style>

![bg right:40% 80%](./linux-file-system2.png)

Compatibilité des systèmes de fichiers:

|          | AIX | HP-UX | Solaris | BSD | Linux |
|----------|-----|-------|---------|-----|-------|
| EXT2-4   |Partial| No  | Partial |Partial | Yes|
| JFS(IBM) | Yes    |     No  | No         | No    | Yes       |
| HFS+     | No     | No       | No   | No  | Partial       |
| UFS      | No    |    Yes   |  Yes        | Yes     | partial    |
| VxFs     |  Yes   | Yes       | Yes         |  No    | Yes       |
| ZFS      |No   | No    | Yes     | Yes | Yes   |

----

## Devices

Un répertoire important de Linux est `/dev`. Il contient tous les *devices* ( référés comme des fichiers).

Ces fichiers représentent votre matériel connecte comme la **souris**.

```bash
# ls -l /dev/
```

> Ce dossier contient des centaines de fichiers. Comme administrateur, vous devez vous concentrer principalement sur les fichiers qui representent vos **disques**.


---

## Devices speciaux

Dans `/dev`, il existe quelque *pseudo* fichiers qui ne représentent pas un
matériel. Il réalisent des taches spéciales selon cette table:

|     Fichier |            Rôle           |
|-------:|:--------------------------------:|
| `/etc/zero` | produit a flux continu de bits. |
| `/dev/random` | Generateuer de nombre aléatoires |
| `/dev/null`  | Fichier special qui **detruit** son contenu |

---

## Le Shell

<style scoped>
p,table {
    width: 80%;
    font-size: 25px;
}

</style>
L'interpréteur de commandes, connu sous le nom de **shell**, est un programme qui accepte des commandes de l'utilisateur et qui exécute des taches décrits par ces commandes.

> Une fois une tache est terminée, le programme vous renvoie le symbole d'écoute qui est prêt a recevoir une nouvelle commande.

Le symbole du shell identifie le type d'utilisateurs. Il existe deux symboles classiques:

|     Symbole |            Utilisateur           |
|-------:|:--------------------------------:|
| `$` | Utilisateur normal (aussi `%` ou `>`) |
| `#` | Utilisateur **Root** |


---

## Shell

<style scoped>
p,table {
    font-size: 25px;
}
</style>

Voici le résultat de quelque commandes :

```bash
$whoami
anass
```
```bash
#whoami
root
```

> Plusieurs systèmes  ajoutent des informations au shell. Ces informations se comme **indicateurs** des informations utiles comme le nom de la machine.

```bash
ensas%machine:/var/log $
```

---

## Types de shell

Il existe plusieurs types de shell. Chacun possède un ensemble de **caractéristiques**.


<style scoped>
p,table {
    width: 80%;
    font-size: 25px;
}
</style>
|  Shell   | Prompt | Nom | Notes | 
|----------|-----|-------|---------|
| sh   |$| Borne Shell  | Shell par defaut de Unix |
| bash | $ | Borne Again Shell | version améliorée de sh. shell par defaut de et linux|
| csh  | % | C Shell | shell par defaut de BSD |
| tcsh | > | T C Shell | version améliorée de csh |
| ksh | $ | Korn Shell | shell par defaut de Aix |

> Dans ce cours, on va utiliser soit `bash` soit `zsh`.

