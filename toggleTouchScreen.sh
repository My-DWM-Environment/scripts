#!/bin/bash

# This script toggle touch screen if it exists

deviceId=`xinput list | grep -iE '(Weida Hi-Tech CoolTouch® System)' | cut -d= -f2 | cut -d[ -f1`;

if [ -z "$deviceId" ]; then
	echo "TouchScreen not found. Exit"
	exit 1
fi

isEnabled=`xinput list-props ${deviceId} | grep 'Device Enabled'`;
isEnabled=${isEnabled:22};

if [ $isEnabled = "0" ]; then
	bash -c "xinput enable ${deviceId}";
else
	bash -c "xinput disable ${deviceId}";
fi
