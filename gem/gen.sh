#/usr/bin/bash

echo "Hello world."

echo "<arc>"
for i in `seq 5`
do 
  echo -e "\t<article$i>"
  for j in `seq 2`
  do 
    echo -e "\t\t<book$j>"
    echo -e "\t\thoge"
    echo -e "\t\t</book$j>"
  done
  echo -e "\t</article$i>"
done
echo "</arc>"