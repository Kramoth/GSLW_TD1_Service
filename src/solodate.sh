#!/bin/bash

LOG_FILE=/var/log/solodated/solodate.out

echo "$(date) : wrote by solodated daemon">>$LOG_FILE
