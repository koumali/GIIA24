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





