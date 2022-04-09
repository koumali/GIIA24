---
layout:  distill
title: Shell scripting in bash
description: learn to write basic and useful script
date: 2021/04/02
permalink: /bash01/ 
lecturers:
  - name:  Anass Belcaid
---

<div class="center">
  <img src="{{'homeworks/04_basic_commands/linux_background.png' | relative_url }}"
  width="500" height="300">
</div>




* (toc)
{:toc}


## Arithmetic with bash

As Bash supports integer artihmetics with the `let` command:

```bash
x=1+1
echo $x  # incorrect as it will print 1+1

let x=1+1
echo $x   #correct
```

Unfortunatly `bash` dones not natively support **floating point arithmetic**,
hence we will rely on an external utilities called [bc](https://fr.wikipedia.org/wiki/Bc_(Unix)).

**bc** is actually it's own complete language!.

We generally create an expression and pass it to bf through **pipelines**.

> We include the -l option for floating point arithmetic

```bash
echo 1/2 | bc -l
.50000000
```

Using this command, write a script to ask the user for an integer **N** and
print the following entities:

- 
 $n! = n\cdot(n-1)\ldots 2\cdot1$

- 
 $\sum_1^n i = n + (n-1) + \ldots + 1$


Now write a script to solve a second orde equation

$
ax^2 + bx + C
$

## Using Substritution

The goal for this questions is to create a :

- string.
- Integer.
- complex variable

using `substitution`.

1. The **string** should be named `BIRTHDATE` and should contain the text **Jan 1,2000**. 
2. The **integer** should be named **Presents** and should contain the number **10**.
3. The **complex variable** should be named **BIRTHDAY** and should contain the
   full weekday name of the day matching the date in variable **BIRTHDATE**

> For example Saturuday.
> Use the the `date` command to convert a date format into a **different**
format. 


## Looping I

Write a script to print the odd numbes from 1 to 99.

```bah
1
3
5
.
.
.
99
```




# Writing functions
In this exercise, you will need to write a function called **ENGLISH_CALC**
which can process sentences such as:

- `3 plus 5`
- `5 minus 1`
- `4 times 6`

and the print the result as:

- `3 + 5 = 8`
- `5 - 1 = 4`
- `4 - 6 = 24`
