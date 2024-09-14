#!/bin/bash
a=0

b=1

i=0

let c

if [ $1 -eq 0 ];
then
echo -n $1
fi

while [ $i -lt $1 ];
do 
echo -n $a
echo -n " "
c=$(($a + $b))
a=$b
b=$c
((i++))
done
exit