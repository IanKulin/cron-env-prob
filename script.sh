#!/bin/bash

echo "The image URL from cron before is: $IMAGE_URL"

# Read the file saved by the entry point script and extract the 
# environment variable
while IFS='=' read -r key value; do
    if [[ $key == "IMAGE_URL" ]]; then
        export "$key=$value"
    fi
done < "/image_url.txt"

echo "The image URL from cron after is: $IMAGE_URL"