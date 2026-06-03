#!/bin/bash
# This script continuously creates files with timestamps and traps SIGINT

handle_sigint() {
    echo "Interruption detected! Logging to signal_log.txt..."
    echo "Script interrupted at: $(date +%Y-%m-%d_%H-%M-%S)" >> signal_log.txt
}

trap handle_sigint SIGINT

while true
do
    filename="file_$(date +%Y-%m-%d_%H-%M-%S).txt"
    touch "$filename"
    echo "Created file: $filename"
    sleep 5
done
