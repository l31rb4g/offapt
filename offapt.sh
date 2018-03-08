#!/bin/bash

pkg=$1
parent='.debs'

mkdir $parent 2> /dev/null
mkdir $parent/$pkg 2> /dev/null

cd $parent/$pkg

deplist=$(apt-get install -y --reinstall --print-uris $1 | grep "^'http" | cut -d"'" -f2)

for dep in $deplist; do
	wget $dep
	echo sudo dpkg -i $(echo $dep | sed -e 's/\(.*\)\/\(.*\)$/\2/') >> install.sh
done

chmod +x install.sh

