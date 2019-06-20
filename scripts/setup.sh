#!/bin/python3

# create a user - pythonadm and create a home directory for it
sudo useradd --create-home pythonadm

# set jenkins default shell to python3
sudo usermod --shell /bin/python3 pythonadm

# copy python.service file to systemd
sudo cp ../python.service /etc/systemd/system

# new service added, systemd needs to be reloaded
sudo systemctl daemon-reload

# start jenkins
sudo systemctl start python
