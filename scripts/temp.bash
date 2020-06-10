#!/bin/bash

let cpu=$(cat /sys/class/thermal/thermal_zone0/temp)/1000
gpu=$(/opt/vc/bin/vcgencmd measure_temp)

echo "$(date) @ $(hostname)"
echo "-------------------------------------------"
echo "CPU => $cpu'C"
echo "GPU => $gpu"
