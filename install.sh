sudo cp service_checker.service /etc/systemd/system

sudo cp service_checker.sh /usr/local/bin

sudo chmod 744 /usr/local/bin/service_checker.sh

sudo chmod 664 /etc/systemd/system/service_checker.service

sudo systemctl daemon-reload

sudo systemctl enable service_checker.service
