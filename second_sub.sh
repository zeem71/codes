#!/bin/bash

read domain
read output

python /root/Desktop/tools/sublister/sublist3r.py -d $domain -o /root/Desktop/tools/sublister/outputs/$output.txt

of=/root/Desktop/tools/sublister/outputs/$output.txt

while read Line;
do
   python /root/Desktop/tools/sublister/sublist3r.py -d $Line -o /root/Desktop/tools/sublister/outputs/$output/$Line.txt
done < "$of"