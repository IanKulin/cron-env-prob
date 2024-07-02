#!/bin/bash

# create the crontab entry
echo "* * * * * /script.sh > /proc/1/fd/1 2>&1" | crontab -

echo "The image URL at the entry point is: $IMAGE_URL"

# save the environment variable IMAGE_URL into a file for later use in the cron script
env | grep IMAGE_URL > image_url.txt

# start cron in foreground to keep container running indefinitely
cron -f