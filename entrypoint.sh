#!/bin/bash

# create the crontab entry
echo "* * * * * /script.sh > /proc/1/fd/1 2>&1" | crontab -

# start cron in foreground to keep container running indefinitely
echo "The image URL at the entry point is: $IMAGE_URL"
cron -f