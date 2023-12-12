#!/bin/bash

# WIP: automatic switching not working yet.
# Create a rule: /etc/udev/rules.d/99-external-screen.rules with following in the rule file:
# SUBSYSTEM=="drm", ACTION=="change", RUN+="/home/yli/utils/switch_display.sh"
# Then use following command to reload the rules:
# sudo udevadm control --reload-rules
# Related: sudo cat /sys/class/drm/card1-HDMI-A-1/status
# connected

export DISPLAY=:0
export XAUTHORITY=/home/yli/.Xauthority
if xrandr | grep "HDMI-1 connected"; then
    ./use_hdmi-1.sh
else
    ./use_edp-1.sh
fi
