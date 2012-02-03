#!/bin/bash
if [ -z $2 ]
then
        exit 1
fi

echo build $2 under $1
cd $1
make $2
