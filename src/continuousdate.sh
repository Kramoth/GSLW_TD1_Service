#!/bin/bash

LOG_FILE=/var/log/continuousdated/continuousdate.out

while :
do
	echo "$(date) : wrote by continuousdated daemon">>$LOG_FILE
	sleep 2
done
