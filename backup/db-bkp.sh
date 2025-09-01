#!/bin/bash

# Database credentials
user="vanilla"
password="W3BWsmXD1eA6o4tx"
host="db"
backup_dir="/var/www/html/vanilla/backup/"
date=$(date +"%F")

# Get a list of all databases
databases=$(mysql --user=$user --password=$password --host=$host -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema|mysql)")

# Iterate over each database and back it up
for db_name in $databases; do
    # Dump database into SQL file
    mysqldump --user=$user --password=$password --host=$host $db_name | gzip > $backup_dir/$db_name-$date.sql.gz
done

