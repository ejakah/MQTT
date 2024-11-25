# CONFIGURATION FOR PUBLISHER
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt-get update
sudo apt install mosquitto
sudo apt install nano
sudo nano /etc/mosquitto/mosquitto.conf

# Place your local configuration in /etc/mosquitto/conf.d/
#
# A full description of the configuration file is at
# /usr/share/doc/mosquitto/examples/mosquitto.conf.example

persistence true
persistence_location /var/lib/mosquitto/

listener 1883
allow_anonymous true

log_dest file /var/log/mosquitto/mosquitto.log

include_dir /etc/mosquitto/conf.d




sudo systemctl restart mosquitto.service
sudo apt-get install mosquitto-clients
mosquitto_pub -h 192.168.0.15 -t test -m "SENTICS GMBH SOFTWARE COMPANY" #  ip ADDRESS 0F THE SUBSCRIBER 192.168.0.15











# CONFIGURATION FOR LISTENNER
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt-get update
sudo apt install mosquitto
sudo apt install nano
sudo nano /etc/mosquitto/mosquitto.conf


# Place your local configuration in /etc/mosquitto/conf.d/
#
# A full description of the configuration file is at
# /usr/share/doc/mosquitto/examples/mosquitto.conf.example

persistence true
persistence_location /var/lib/mosquitto/

listener 1883
allow_anonymous true

log_dest file /var/log/mosquitto/mosquitto.log

include_dir /etc/mosquitto/conf.d


sudo systemctl restart mosquitto.service
sudo apt-get install mosquitto-clients
mosquitto_sub -h 192.168.0.15 -t test 


 


