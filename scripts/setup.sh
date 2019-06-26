#!/bin/bash

# create a user - pythonadm and create a home directory for it
sudo useradd --create-home pythonadm

# set pythonadm default shell to python3
sudo usermod --shell /bin/python3 pythonadm

# copy python and html file into user - pythonadm
sudo cp ../homepage.html /home/pythonadm | sudo cp ../server.py /home/pythonadm

# copy python.service file to systemd
sudo cp ../python.service /etc/systemd/system

# new service added, systemd needs to be reloaded
sudo systemctl daemon-reload

# start python
sudo systemctl restart python
