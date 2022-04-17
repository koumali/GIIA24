---
layout:  page
title: Shell scripting II
description: Master pipelines and grep
date: 2021/04/02
permalink: /bash02/ 
lecturers:
  - name:  Anass Belcaid
---

<div class="center">
  <img src="{{'homeworks/04_basic_commands/linux_background.png' | relative_url }}"
  width="500" height="300">
</div>




* (toc)
{:toc}


This assignment focuses on using **regular expression** and related commands
such a `grep`. A set of files are needed for this assignment are available in
`hw6.zip` in the homepage.


```shell
wget anassbelcaid.github.io/GiIA24/homeworks/06_shell_scripting/hw6.zip
unzip hw6.zip
```


## Warm-up : Shell commands with grep

The following are warm-up exercises to get some practice with regular expressin
and `grep -E`. For these exercises you'll be searching from a file called
`names.txt` tat contains both single-word usernames as well as full names. You
may  assume the file contains one name per line. Write your commands on the
indicates lines in the **task1.sh** file in the hw6 folder.


### Problem 1

Write the command that finds all usernames from `names.txt` that contain at
least one numeric character.


### Problem 2

Write the command that finds all usernames from `names.txt` that are exactly
**4** characters long and consist only of alphabetic characters. 


### Problem 3

Write the command that finds all first and last names from `names.txt`. A name
is an uppercase letter followed by one or more lowercase letters and first and
last names are separated by a single space.

> Your command should not matches with names that contain a middle name or
initials.


## Task 2: Bash shell commands with grep

After the few weeks at ENSA, management has discovered that we need to start
actually selling products to stay in business. You'll be helping develop regular
expressions to help in customer account creation and billing. For each item
below, **determine a single bash shell statement that will perform the
operations(s) requested**. Write your commands on the indicated lines in the
`task2.sh` file in **hw6** folder.


### Email Validation

As part of account creation, customer must provide a valid email address. Write
a command that print out all valid email addresses from `emails.txt`. For the
purposes of this assignment, we will use as simplified version of valid email
address is defined as follows:

1. Between 1 and 16 lowercase letters, uppercase letters, or digits.
2. An **@** symbol
3. A domain (e.g. gmail) that consists of any number of lowercase letters.
4. a period **.**
5. A tld (top level domain, e.g. `.com`) that consists of 2 or more lowercase
   letters.

   > You may assure emails.txt contains one email per line.


### Password Validation

Customers also must choose a strong password when creating an account. Write a
command that prints out all valid passwords in the file `password.txt`. A valid
password at ENSA is defined as follows:


- Must be at least **8** characters long.
- Must contain at lest one uppercase character.
- Must contain at least one lowercase character.
- Must contain at lest one digit.

> You mas assume that `password.txt` contains one password per line


### Credit Card validation

In to process payment for orders, ENSA needs to validate credit cards entered on
the site. Since we are a small company. we will only be accepting **Visa** and
**MasterCard**. Write a command that identifies all well-formatted credit carsd
in a file called `cards.txt` that ENSA accepts. The format of these cards are as
follows

- Master Card
    - Begins with a 5
    - Exactly 16 digits long, grouped into sets of 4 separated by a space.
- Visa:
  - Beings with a 4
  - Between 13 and 16 digits long, grouped into a sets of 4 (last may be shorter) separated by a space separated by a space

## Genetic data

ENSA has decided to enter the **biotech** space and process genomic data. 

For these problems, you will need to process **DNA** from the file `dna.txt`.
Data is printed in the file in pairs of lines. The first lien in the pair is the
name of the DNA sequence and the second line is the DNA sequence itself. The
following provides you with some context for the task, but an understanding of
DNA is **not required** for this assignment.

DNA consists of long chains of chemical compounds called nucleotides. Four nucleotides are present in DNA: **Adenine (A)**, **Cytosine (C)**, **Guanine (G)**, and **Thymine (T)**. Certain regions of the DNA are called genes. Most genes encode instructions for building proteins (they’re called “protein-coding” genes). These proteins are responsible for carrying out most of the life processes of the organism. Nucleotides in a gene are organized into codons. Codons are groups of three nucleotides and are written as the first letters of their nucleotides (e.g., TAC or GGA). Each codon uniquely encodes a single amino acid, a building block of proteins.


### Problem 7

Print all the of the **DNA** sequences in the file (all of the non-names).


### Problem 8

Print all of the names of  DNA sequences in the file.


### Problem 9

Print the full DNA sequence that contain the word **CAT** preceded by the name
of the sequence.


### Problem 10

Print all of the **DNA** sequences that start and end with the same **codon
(three letters)**. For this case do not worry about matching start and end
codons that don't have the same casing as each other.


### Problem 11

Print all valid genes in the file. That is, all of DNA sequences that can be
divided into codons(i.e A sequence of A, C, G, and T's and a has a length of
**3**).

### Problem 12

Protein-coding genes are gens that begin with **ATG** end with one of **TTA**,
**TAG**, or **TGA** and at least 5 codons long.

Print all the protein-encoding gens in the file.
