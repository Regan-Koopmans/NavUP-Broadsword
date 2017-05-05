#!/bin/bash

request_total=10000
rm $1

echo "NAVIGATION"

for i in $(seq 1 $request_total)
do
   curl "http://localhost:8888/navigation?function=getRoute&start=EMB&end=IT4-5" >> $1
   #curl "http://localhost:8888/users?function=register&username=jason&password=jason&fullname=Jason%20Hattum&email=jason&firstname=Jason&lastname=Hattum" >> $1
   echo "" >> $1
done

echo "Number of requests sent:" $request_total
echo "Number of responses:" $(wc -l < $1) 
