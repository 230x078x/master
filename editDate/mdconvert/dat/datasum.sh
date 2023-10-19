#!/bin/csh -f

@ n = 1

while ($n <= 1250)
if ( $n == 1 ) then
   cp ../${n}/cgout.xtc cg.xtc
else
   gmx trjcat -f cg.xtc ../${n}/cgout.xtc -o cg_$n.xtc -settime < choice.txt
   if(-f cg_$n.xtc) then
     rm cg.xtc
     mv cg_$n.xtc cg.xtc
   endif
endif
if ( $n == 1250) then
   mv cg.xtc cg_$n.xtc
endif

   @ n = $n + 1
end
                                                                                          24,4          Top