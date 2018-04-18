#!/bin/bash

# Submit a CRON with ROOT ----> sudo crontab -e

# Create a backup of all MySQL databases
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Create a temporary directory to store the MySQL databases
mkdir /$( date '+%Y-%m-%d' )

# Enter the temporary directory created above
cd /$( date '+%Y-%m-%d' )

# now create a directory to store the html files
mkdir /attached_docs

# First copy all the files from /var/www/html/attached_docs to this temporary folder
# cp -R /var/www/html/attached_docs/product_docs/product_doc_1.png .
cp -R /var/www/html/attached_docs/ attached_docs/

# Create a dump of each database
mysql --skip-column-names -u root -p'azarbod98765' -e 'show databases;' | while read dbname; do if [ "$dbname" = "azarbod" ] ; then mysqldump --lock-all-tables -u root -p'azarbod98765' "$dbname" > "$(date +%Y%m%d)-$dbname".sql; fi done

# Create a tar.gz archive, consisting of all database backups
tar -zcf /mapletools_$( date '+%Y-%m-%d' ).tar.gz /$( date '+%Y-%m-%d' )

# Transfer the tar.gz archive to Dropbox
su ubuntu -c "/usr/local/bin/dropbox_uploader upload /mapletools_$( date '+%Y-%m-%d' ).tar.gz /"

# Remove the temporary html files directory
rm -rf /attached_docs

# Remove the temporary directory created at the top of the script
rm -rf /$( date '+%Y-%m-%d' )

# Finally, remove the tar.gz archive from the server
rm -rf /mapletools_$( date '+%Y-%m-%d' ).tar.gz
