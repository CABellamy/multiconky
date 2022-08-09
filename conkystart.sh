#!/bin/sh
RCFILES=/home/chris/conky/*
sleep 2

echo "scanning for conky configs"
for f in `find . -type f -regex "./.?conkyrc.*"`
do
echo "starting conky -q -c $f"
conky -q -c $f & 
done
exit