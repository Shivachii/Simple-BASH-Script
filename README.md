## Simple CPU & SSD Temperature Monitor

A simple Bash script to monitor CPU and SSD temperatures and send desktop notifications when they exceed specified thresholds.

## Features

- Monitors CPU and SSD temperatures.

- Sends notifications if temperatures exceed defined limits.

- Runs continuously with a 10-second check interval.

## Requirements

- Linux system

- Sensors command (from lm-sensors)

- Notify-send (for desktop notifications)

- bash shell

## Install required tools on Debian/Ubuntu:

- sudo apt update
- sudo apt install lm-sensors libnotify-bin
- sudo sensors-detect

### Usage

Clone or download the script.

### Make it executable:

chmod +x temp-monitor.sh


Run the script:

./temp-monitor.sh


The script will check CPU and SSD temperatures every 10 seconds and notify if they exceed the set thresholds (CPU_MAX=85°C, SSD_MAX=70°C).

## Configuration

Change CPU_MAX and SSD_MAX at the top of the script to adjust thresholds.

Modify the sleep interval to change how frequently temperatures are checked.
