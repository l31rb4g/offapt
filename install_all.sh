#!/bin/bash

list=$(find -name install.sh)
for l in $list; do
    dir=$(echo $l | sed 's/.\/\(.*\)\/install.sh/\1/')
    cd $dir
    ./install.sh
    cd ..
done

