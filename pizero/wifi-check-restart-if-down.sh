#!/bin/bash

# keep wifi alive

ping -c2 192.168.0.1
if [ $? != 0 ]
then
  echo " "
  echo "No network connection, restarting wlan0"
  ifconfig wlan0 down
  sleep 30
  ifconfig wlan0 up
  wpa_supplicant -B -c /etc/wpa_supplicant/wpa_supplicant.conf -i wlan0
  dhclient wlan0
  dhclient wlan0 -r
else
    echo " Nothing to do "
fi
