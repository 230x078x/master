#!/bin/bash 
m=1
n=251
l=8
while [ "$m" -lt "$n" ]
 do
  echo "$m "



mv $m/cgout.xtc //share03/yamada/mses_ver2-1/dock/$m/cgout.xtc

let m++
done
