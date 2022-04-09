
#!/bin/bash
read -p "What is your age: " age # read the variable age

if [ $age -lt 18 ] 
then 
  echo "Nice You're still a child"
else
  echo "Well, you're becoming old"
fi
