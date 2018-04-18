#!/bin/bash

# Submit a CRON with ubuntu or any specific user that is not ROOT --> "sudo crontab -u ubuntu -e" or "crontab -e"
# or execute the file with the command line ---> "sudo ./dropbox-snapshot.sh"

# Create a backup of all MySQL databases
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Transfer the tar.gz archive to Google Drive
/home/ubuntu/dropbox_uploader.sh upload /var/www/html/snapshot/cron.log /
