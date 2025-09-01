#!/bin/bash
# Application Details
backup_dir="/var/www/html/vanilla/backup/"
date=$(date +"%F")
source_dir="/var/www/html/vanilla/webroot"
application="vanilla"

#Remove old data
#rm -rf $backup_dir/*

# Compress directory in TAR formate from source to backup in same name with date format
tar -zcvf $backup_dir/$application-$date.tar.gz $source_dir;
