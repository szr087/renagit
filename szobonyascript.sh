#!/bin/bash
echo "EZ A SCRIPT KIÍRJA, HOGY A MEGADOTT SZÁM MEGTALÁLHATÓ-E A FIBONACCII SZÁMSOROZATBAN! "
echo "Írd be a keresett számot!: "
read keresett;

echo -n "Hány elemét szeretnéd látni a FIBONACCII sorozatnak? "
read szam;
x=0;
y=1;
i=2;
szamok=($x $y)
echo "A FIBONACCII SZÁMSOROZAT $szam ELEME: "
while [ $i -lt $szam ]
do
i=`expr $i + 1`;
z=`expr $x + $y`;
szamok+=($z)
x=$y;
y=$z;
done


echo ${szamok[*]}

for k in "${szamok[@]}"; do  
  if [ $k == $keresett ]; then
  echo "MEGVAN"  
  fi
done 
 



