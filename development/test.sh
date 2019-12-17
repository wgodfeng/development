#!/bin/bash
a=1
b=0
c=0
d=0
while ((a<=255)) && ((b<=255)) && ((c<=255)) && ((d<=255))
do
#ip="${a}.&{b}.&{c}.&{d}"
ip=$a"."$b"."$c"."$d
sh ping.sh $ip
((d=$d+1))
if ((d==256)); then
 d=0
 ((c=$c+1))
 if ((c==255)); then
  c=0
  ((b=$b+1))
  if ((b==255)); then
   b=0
   ((a=$a+1))
  fi
 fi
fi
done
