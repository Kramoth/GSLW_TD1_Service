#!/bin/bash

uninstall_daemon()
{
sudo systemctl stop $1
sudo systemctl disable $1
sudo rm -rf /etc/systemd/system/$1
log_folder=$(echo $1 | cut -d "." -f 1)
sudo rm -rf /var/log/$log_folder
}

uninstall_daemon solodated.service
uninstall_daemon continuousdated.service
