#!/bin/bash
# Create a backup of all MySQL databases
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Transfer the tar.gz archive to Google Drive
/home/ubuntu/dropbox_uploader.sh upload /var/www/html/snapshot/cron.log /
