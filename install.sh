#!/bin/bash

INSTALL_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo cp $INSTALL_DIR/service/* /etc/systemd/system/
sudo cp $INSTALL_DIR/src/* /bin/

sudo mkdir /var/log/solodated
sudo mkdir /var/log/continuousdated

sudo systemctl enable solodated.service
sudo systemctl start solodated.service

sudo systemctl enable continuousdated.service
sudo systemctl start continuousdated.service
