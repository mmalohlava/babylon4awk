#! /usr/bin/awk -f

BEGIN {  
FS =","
OFS=","
}
NR == 1 { print $LINE, "IsArrDelayed","IsDepDelayed" }
NR > 1 { 
         if ($15 > 0)
             arrDelay="YES"
         else
             arrDelay="NO"
         if ($16 > 0)
             depDelay="YES"
         else
             depDelay="NO"
         print $LINE, arrDelay, depDelay 
       }
