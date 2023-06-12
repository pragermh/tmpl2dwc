#!/bin/sh
events=$1
asvs=$2
echo "id" > occurrence.csv
for e in $(cut -d, -f 1 $events |grep -v eventID); do for a in $(cut -d, -f 1 $asvs|grep -v asv_id); do echo "$e:$a"; done; done | sort >> occurrence.csv
