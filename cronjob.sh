#!/bin/bash

CRON_FILE="/etc/cron.d/ping_endpoints"
SCRIPT_PATH="/path/to/Ping/ping_endpoints.sh"  # Update this path

# Add cron job entry
echo "* * * * * root $SCRIPT_PATH" > $CRON_FILE
echo "* * * * * root sleep 30 && $SCRIPT_PATH" >> $CRON_FILE

# Set the correct permissions
chmod 644 $CRON_FILE

# Apply the cron job
crontab $CRON_FILE