#!/bin/sh
# Create a backup of all MySQL databases
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


# Create a temporary directory to store the MySQL databases
mkdir /$( date '+%Y-%m-%d' )

# Enter the temporary directory created above
cd /$( date '+%Y-%m-%d' )

# Create a dump of each database
mysql --skip-column-names -u root -p -e 'show databases;' | while read dbname; do if [ "$dbname" != "information_schema" ] ; then mysqldump --lock-all-tables -u root -p "$dbname" > "$(date +%Y%m%d)-$dbname".sql; fi done

# Create a tar.gz archive, consisting of all database backups
tar -zcf /$( date '+%Y-%m-%d' ).tar.gz /$( date '+%Y-%m-%d' )

# Transfer the tar.gz archive to Google Drive
gdrive upload /$( date '+%Y-%m-%d' ).tar.gz

# Remove the temporary directory created at the top of the script
rm -rf /$( date '+%Y-%m-%d' )

# Finally, remove the tar.gz archive from the server
rm -rf /$( date '+%Y-%m-%d' ).tar.gz
