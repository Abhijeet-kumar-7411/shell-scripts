#!/bin/bash

#############################
#
# Author- Abhijeet Kumar
#
# This is my script for getting disk space of our system
#
# This is version 2 of my script
#
#
#
#
######################

THRESHOLD=80
df -h | awk 'NR>1 {print $5 " " $6}' | while read output; do
  usage=$(echo $output | awk '{print $1}' | sed 's/%//')
  partition=$(echo $output | awk '{print $2}')
  if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk space on $partition is at ${usage}%"
  fi
done

