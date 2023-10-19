#!/bin/bash 
m=1
n=1251
l=8
while [ "$m" -lt "$n" ]
 do
  echo "$m "


## done | gmx distance -f ../${n}/mdout1.xtc -s ../${n}/mdout1.tpr -oall ../${n}/dist.xvg -oav ../${n}/distave.xvg -oallstat ../${n}/diststat.xvg -oh ../${n}/disthist.xvg -n list.ndx -select
rm -r $m
# mkdir $m
# mdconvert //share03/yamada/mses_ver2-1/dock2/$m/cgout.dcd -o $m/cgout.xtc

let m++
done
