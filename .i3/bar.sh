#!/bin/sh


while :
do
    RAM=$(screenfetch -n | awk '/RAM:/ {print $3}')
    BAT=$(acpi battery | awk '{print $4,$5}')
    TEMP=$(sensors | awk '/Core 0:/ {print $3}' | cut -c 2-)
    STOR=$(df -h | awk '/\/dev\/sda1/ { print $3}')
    for ((n=0;n<5;n++))
    do

	DATE=$(date | awk '{ print $1,$2,$3,$4 }')
	VOL=$(pactl list sinks | awk '/\tVolume:/ {print $5}')
	echo " $VOL  $BAT  $TEMP  $STOR  $RAM  $DATE"
	sleep 1
    done
done
