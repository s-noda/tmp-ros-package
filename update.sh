#!/usr/bin/env bash

git pull origin master;

for d in `ls`;
do
    if [ -d $d ];
    then
	echo "-- enter into $d";
	cd $d;
	git pull origin master;
	cd ..;
    fi
done

# git pull origin master;
# cd contact_behavior_generation;
# git pull origin master;
# cd ../eus_gui;
# git pull origin master ;
# cd ..;
