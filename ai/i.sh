#!/bin/bash

# Function to check WiFi connection
check_wifi() {
    nmcli device wifi status | grep "connected"
}

# Connect to WiFi
nmcli device wifi connect "Your_SSID" password "Your_Password"

# Check for WiFi connection every half second until successful
until check_wifi; do
    sleep 0.5
done

# Start Arch installation
archinstall --preconfigured /path/to/your/preconfigured.json
