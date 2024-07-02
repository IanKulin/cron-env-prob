 # Use a stable version of Debian as the base image
FROM debian:stable-slim

# run updates and install cron
RUN apt-get update && apt-get install -y cron

# copy our files in
COPY entrypoint.sh /entrypoint.sh
COPY script.sh /script.sh

# and set them to be executable
RUN chmod +x /entrypoint.sh /script.sh

# Set environment variable
ENV IMAGE_URL http://example.com/image.jpg

# run the script that creates the crontab and starts cron in the foreground
ENTRYPOINT ["/entrypoint.sh"]