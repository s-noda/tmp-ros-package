#!/usr/bin/env bash

MSG=`cd contact_behavior_generation &&  git log . | head -6`;
cd - && git commit contact_behavior_generation -m $MSG;

MSG=`cd eus_gui &&  git log . | head -6`;
cd - && git eus_gui -m $MSG;

git push origin master;
