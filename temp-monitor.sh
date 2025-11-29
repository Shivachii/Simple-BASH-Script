#!/bin/bash

CPU_MAX=85
SSD_MAX=70

while true; do
    CPU_TEMP=$(sensors | grep -m 1 'temp1:' | awk '{print $2}' | tr -d '+°C')
    SSD_TEMP=$(sensors | grep 'Composite:' | awk '{print $2}' | tr -d '+°C')

    if (( ${CPU_TEMP%.*} > CPU_MAX )); then
        notify-send "⚠️ CPU Temp High" "CPU at $CPU_TEMP°C"
    fi

    if (( ${SSD_TEMP%.*} > SSD_MAX )); then
        notify-send "⚠️ SSD Temp High" "SSD at $SSD_TEMP°C"
    fi

    sleep 10
done
