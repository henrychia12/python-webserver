#!/bin/bash

# stop python server
sudo systemctl stop python

# reload daemon
sudo systemctl daemon-reload

# remove python.service file
sudo rm -r /etc/systemd/system/python.service

# deleting pythonadm user using root
sudo su - root -c "userdel -r jenkins | rm -r /home/pythonadm"
