#!/usr/bin/env bash

for d in `ls`;
do
    if [ -d $d ];
    then
	echo "-- enter into $d";
	cd $d;
	MSG=`git log . | head -6`;
	echo $MSG;
	git commit . -m "update $d: $MSG";
	git pull origin master;
	cd ..;
    fi
done


# MSG=`cd contact_behavior_generation &&  git log . | head -6`;
# echo $MSG;
# git commit contact_behavior_generation -m "update contact_behavior_generation: $MSG";

# MSG=`cd eus_gui &&  git log . | head -6`;
# echo $MSG;
# git commit eus_gui -m "update eus_gui: $MSG";

# git push origin master;
