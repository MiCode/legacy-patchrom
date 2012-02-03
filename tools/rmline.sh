#!/bin/bash

for file in `find $1 -name "*.smali"`
do
mv $file $file.bak
more $file.bak | sed -e '/^\s*\.line.*$/d' | sed -e 's/\/jumbo//' > $file
rm $file.bak
done
