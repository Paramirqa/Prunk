#!/bin/bash
var1=1
cd ascii/
while [ $var1 -ne -1 ]
do
cat $var1
sleep 0.04s
clear
let var1=var1+1
if [[ $var1 == 44 ]]; then
    let var1=1
fi
done