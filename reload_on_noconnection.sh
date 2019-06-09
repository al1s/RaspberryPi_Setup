#!/bin/bash
if cat /home/pi/.config/chromium/chrome_debug.log | grep -i -q ":error"; then 
  timestamp=$(date +%D_%T)
  echo "$timestamp ERROR encountered, reload the page" > /var/log/page_reload.log
  export DISPLAY=:0
  export XAUTHORITY=/home/pi/.Xauthority
  /usr/bin/xdotool search --sync --onlyvisible --class "Chromium" windowactivate key ctrl+R;
  > /home/pi/.config/chromium/chrome_debug.log
fi
