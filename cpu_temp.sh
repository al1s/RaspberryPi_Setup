#!/bin/bash
timestamp=$(date +%D_%T)
temp=$(/opt/vc/bin/vcgencmd measure_temp)
echo "$timestamp $temp" >> /var/log/cpu_temp.log

