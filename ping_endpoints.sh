#!/bin/bash

URL1="https://www.bloginary.live/courses"
URL2="https://api.bloginary.live/api/v1/health"
LOG_FILE="/path/to/Ping/ping_log.txt"  # Update this path

echo "$(date) - Pinging $URL1" >> $LOG_FILE
curl -Is $URL1 >> $LOG_FILE 2>&1

echo "$(date) - Pinging $URL2" >> $LOG_FILE
curl -Is $URL2 >> $LOG_FILE 2>&1

echo "----" >> $LOG_FILE