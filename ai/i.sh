#!/bin/bash

# Function to check WiFi connection
check_wifi() {
    nmcli device wifi status | grep "connected"
}

# Connect to WiFi
nmcli device wifi connect "FRITZ!Box 7510 VZ" password "87441603015199043698"

# Check for WiFi connection every half second until successful
until check_wifi; do
    sleep 0.5
done

# Start Arch installation
archinstall --config ./user_configuration.json --cred ./user_credentials.json
