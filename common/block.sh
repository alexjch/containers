#!/bin/bash

cleanup() {
    echo "Cleaning up."
    exit 0
}

# Trap SIGINT (Ctrl+C) and SIGTERM (kill)
trap cleanup SIGINT SIGTERM

echo "Script is running. Press Ctrl+C to stop."

# Block execution indefinitely
while true; do
    sleep 4
done
