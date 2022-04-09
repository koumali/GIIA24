#!/usr/bin/bash

FILES=$(ls *.txt)  # getting the list of all txt files
PREFIX="new"       # prefix for renaming the files

for FILE in $FILES
do
  echo "renaming $FILE to ${PREFIX}-$FILE"
  mv $FILE ${PREFIX}-$FILE
done
