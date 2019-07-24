#!/bin/bash
ping -c4 8.8.8.8 > /dev/null
 
if [ $? != 0 ] 
then
  echo "$(date): No network connection, restarting wlan0" >> /var/log/checkwifi.log
  ip link set wlan0 down
  sleep 5
  ip link set wlan0 up
fi

