#!/bin/bash

serviceName=exxact.service

while (true)
do

if systemctl is-active --quiet $serviceName

then

	echo Service is running

	sleep 3

else

echo Service is not running, enabling and restarting service:

sudo systemctl enable $serviceName
sudo systemctl restart $serviceName

systemctl is-active --quiet $serviceName && echo Service is running
sleep 3
fi

done




