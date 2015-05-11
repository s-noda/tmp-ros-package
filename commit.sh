#!/usr/bin/env bash

MSG=`cd contact_behavior_generation &&  git log . | head -6`;
echo $MSG;
git commit contact_behavior_generation -m "update contact_behavior_generation: $MSG";

MSG=`cd eus_gui &&  git log . | head -6`;
echo $MSG;
git commit eus_gui -m "update eus_gui: $MSG";

git push origin master;
