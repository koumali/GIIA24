---
layout:  post
title: Shell programming I
description:  An introduction to writing scripts in shell.
date: 2022/04/24
permalink: /shellProg2/ 
lecturers:
  - name:  Anass Belcaid
---

* (toc)
{:toc}


## Hello, World!

This lectures discusses `shell programming` in general with [bash](https://fr.wikipedia.org/wiki/Bourne-Again_shell) as the main shell interpreter. We will also reference some differences with other shells such as **csh**, **tcsh**.


**Shell programming** is accomplished by writing basic shell commands in simple file called `script`. To execute the set of commands, all you have to do is to **execute** that file. Of course this file must be **executable**. Even we did not discuss file permissions, we will add the following command to each script we write.

```shell
chmod +x filename
```

the first line of shell script generally begin with a **sha-bang** (`#!`) which not read as a comment. The sha-bang is followed by the **path** of the shell that should execute this file. For example if we want to execute the file with **bash**, we will add the following line:

```shell
#!/bin/bash
```
> If this path is **incorrect**, an error message e.g "Command not found" will be raised

> Also it is a convention to name the script with the extension **.sh** for shell.

If you're not sure what is the name of your shell, execute the following command to get the name of your shell:

```shell
echo $SHELL  # pringing the simple variable
```

And if you want to know the path of your current shell:

```shell
which $SHELL
```

As a simple start, we will create a script to print (with `echo`) the classical **Hello, Word!**.


```shell
#!/usr/bin/zsh

echo "Hello World!"
```


## Variables

Shell variables are **placeholder** to store different values. A **variable** can contain a number, a character or a string. As mentioned in linux variables naming is **case sensitive**.

Variables names can contain a combination of letters and the underscore "_". **Assignment** is done via the **=** operator.

> Be extremely careful as **no spaces are allowed** between the **=** sign.

```shell
greeting='Hello World!'  # good assignement

price=14              # Will give an error
```

### Declaring variables

Here are some examples for variables naming and assignment:

```shell
PRICE=5
cost_per_kilo=2
this_is_a_string='Hello'
```

We must be careful naming variables that contains spaces. we need to enclose
them usign **""**.

```bash
X=Hello          #ok
X=Hello wold    #error
X="Hello world" # Now it's ok
```


Once it's declared, we could **reference** this variables using the `$` operator.

```shell
price=5
echo  "The price of my product is $price \$
```
> Remark that we used the **escape** character **\** to print the $.

Also, we could use `${}` to protect the variable and avoid any ambiguity.

```shell
myName=ABC
echo "My name is ${myName}EE"
```

An important and powerful mechanism is that variable can be assigned with the **output** of another command. This is referred as `substitution`. You can realise that either by encapsulating the command in \`\` or `$()$`.

```shell
#getting the list of files
FILES=`ls`

#create a file with the current date
name=my_report_$(date +%Y-%m-%d).txt
```

### Signel Quots versus double quotes

Bascially, variables names are **expanded** within double quotes, but **not** in
single quotes. If you do not need to refer to variables, **single quotes** are
tood to use as the results are more **predictable**.

Here is an example:

```bash
#!/bin/bash
echo -n '$USER='  # -n optiosn tops echo from breakign the line
echo  "$USER"   # user is expanded
echo  "\$USER=$USER"
```


## Condtional, if/then/elif

Sometimes, it's necessary to check for certain conditiosn.

- Does a string have **0** lenght?
- Does the file "foo" exist?
- Is a file a symbolic link?

The first syntax of an **if** statement is

```shell
if condition
then 
    statement1
    statement2
    ....
fi
```

If you want to execute something for false case of the conditiosn

```shell
if condition
then 
    statement1
    statement2
    ....
else
  statemetn3
fi
```

And finally if you have more than one branching cases:

```shell
if condition
then 
    statement1
    statement2
    ....
elif condition2
then
    statement3
    statement4
    ....
else
  statemetn3
fi
```


### Logical values and comparators

For a condition, we must specify that 

- **0** (true)
- **1** (false)

and for comparing values eq have the following operators:

- `-eq` : Test for equality (==)
- `-nq` : Test for equality (!=)
- `-gt` : Test for equality (>)
- `-ge` : Test for equality (>=)
- `-lt` : Test for equality (<)
- `-le` : Test for equality (<=)

Generally a test is grouped between the `[ condition ]` operator. We can also
use the command 

```shell
test expression
```

For example:

```shell
test 0 -eq 0; echo $? # test if 0 is equal to 0 and print the result
[ 0 -eq 0]; echo $?    # Test using the [] operator

test 0 -ne 0; echo $? # Same but with inequality
[ 0 -ne 0]; echo $?
```

Let present some examples to better grasp these notions:


```bash
#!/bin/bash
X=3
Y=4
empty_string=""

if [ $X -lt $Y ]    # test if X is smaller thatn Y
then
  echo "\$X=${X} is smaller than \$Y=${Y}"
fi
```

Here is another example that ask a prompt from the user. 

```bash
#!/bin/bash
read -p "What is your age: " age # read the variable age

if [ $age -lt 18 ] 
then 
  echo "Nice You're still a child"
else
  echo "Well, you're becoming old"
fi
```

**Some pitfalls**: Be warry that the synmtax of a test is exactly

> operand1**\<space\>**operator**\<space\>**operand2


Forgetting the space will give an unxpected result. Let's illustrate this with
the following example:

```bash
if [ 1=2 ]; then  # Be extermely careful of this error
  echo "Hello"
fi
```
As a surprise this expression will print the string "Hello" since it see only an
operand but not an operator.

Here is a brief summary of the test operators


- `-n` : produce true if the operand is **non zero** length
- `-z` : produce true if the operand has **zero length**.
- `-d` : There exists a **directory** of the name.
- `-f` : There exists a **file** of the name.


### Case

To avoid multiple **if** statements, we can use the `case` command with the
following syntax:

```bash
case word in 
  [ [(] pattern [| pattern ]) command-list ;;]
esac
```

**case** will execute the first command-list corresponding to the **first
pattern** that matches `word`.

Her is an exmaple using this command for a script to print the number of feet of
an animal:

```bash
#!/usr/bin/bash

echo -n "Enter the name of an animal: "
read ANIMAL

echo -n "The $ANIMAL has "

case $ANIMAL in 
  horse | dog | cat) echo -n "four";;

  man  | kangaroo ) echo -n "two";;

  *) echo -n "an unknow number of";;
esac

echo " legs."
```


## Loops

Loops are construction that enable one to reiterate a procedure or perform the
same procedure on several different items. There are the following kinds of
loops available in bash.

1. **for** loops.
2. **while** loops.


### For loops

the syntax for the **for** loops is best demonstrated by examples.

```bash
#!/usr/bin/bash
for X in red greee blue
do
  echo $X
done
```

The **for** loops iterates the loop over the **space** separated items. Hence if
a some element has **embedded spaces**, we have en enclose them in **""**.

```bash
#!/usr/bin/bash

for X in "Color 1" "Color 2" "Color 3"
do
  echo $X
done
```


#### Globbing in for loops

The shell expands a string containing a `*` to all filenames that **matches**. A
filename matches if and only if it is identical to the match string after
replacing the stars `*` with arbitrary string. Let's illustrate this example by
renaming **all files with the txt extension**.


```bash
#!/usr/bin/bash

FILES=$(ls *.txt)  # getting the list of all txt files
PREFIX="new"       # prefix for renaming the files

for FILE in $FILES
do
  echo "renaming $FILE to ${PREFIX}-$FILE"
  mv $FILE ${PREFIX}-$FILE
done
```

### While loops

While loops iterate **while** a given condition is **true**. An example of this
is:

```bash
#!/usr/bin/env bash
X=0
while [ $X -le 20 ]
do
  echo $X
  X=$((X+1))
done
```


## Shell arguments

A shell can accept a set of **arguments** when it's executed. Arguments are passed after the name of the script and they are **space** delimited.

Inside the script we would use **$n** reference to access the **nth** reference.

> The variable $0 refers to the current script.

Here is an example of a script called `sum.sh` to compute the sum of its arguments.

```shell
#!/bin/bash

echo "The name of the file is $0"

echo "The sum of arguments is $(($1 + $2))"
```

Here is how we can use the script now:

```shell
./sum.sh 10 10
The name of the file is ./02_sum.sh
The sum of arguments is 20
```

## Shell functions

Like other programming languages, the shell may have functions. A function is a
**subroutine** that implements a set of commands and operations. It is useful
for **repeated tasks**.

```bash
# basic construct
function function_name() {
  command...
}
```

- Function are called simply by writing their **names**. A function call is
equivalent to a **command**. 
- Parameters may be passed to a function, by specifying them after the function
    name.
- The first parameter is referred in the function using **$1**, the second
    **$2**, etc.

```bash
#!/usr/bin/env bash

#simple function
function function_B {
  echo "Function B."
}

# A function with an argument
function function_A {
  echo "$1"
}

#function to add
function adder {
 echo "$(($1 + $2))"
}

# Function CALLS
function_B                     # Simple call
function_A "argument"          # call with an argument
adder 12 15                    # call for two arguments
```
    



