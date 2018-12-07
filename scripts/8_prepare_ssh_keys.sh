#!/bin/bash
file="../nodes"
#if [ ! -f /root/.ssh/id_rsa ]
#ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''

while IFS= read -r var; 
do 
  echo "ssh-copy-id to $var"
  ssh-copy-id root@$var;
done < "$file"	
