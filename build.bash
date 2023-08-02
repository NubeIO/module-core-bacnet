#!/bin/bash

code_path=$1

if [ "$code_path" = "" ];
then
    code_path="code/go"
    echo NO PATH PROVIDED WILL USE: $code_path
else
    echo PATH PROVIDED WILL USE: $code_path
fi

path=$HOME/$code_path/rubix-os

echo $path
echo "****EXISTING MODULES****"
ls  $path/data/modules
echo "****EXISTING MODULES****"

go build -o module-core-bacnet && mv -f module-core-bacnet $path/data/modules && cd $path && bash build.bash system
