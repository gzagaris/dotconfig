#!/usr/bin/env bash

# Interval in seconds between each keypress (default 60 seconds)
INTERVAL=60

# Loop to keep sending a keypress
while true; do
    # Send an empty command (null character) to keep the connection alive
    echo ":" > /dev/null

    # Wait for the specified interval
    sleep $INTERVAL
done
