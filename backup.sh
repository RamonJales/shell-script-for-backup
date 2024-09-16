#!/usr/bin/env sh

# backup folder
backup_path="type here the file or folder path that you wanna do the backup"

# backup destiny folder: type here the path that your backup goes
external_storage="/mnt/backup"

#file format
date_format=$(date "+%d-%m-%Y")
final_archive="backup-$date_format.tar.gz" #compress files for the backup

#log file path
log_file="/var/log/my-backup.log"

#check if the divice is mounted
if ! mountpoint -q - - $external_storage; then
  printf "$[date_format] DEVICE NOT MOUNTED in: $external_storage\n" >> $log_file
  exit 1
fi

if tar -czSpf "$external_storage/$final_archive" "$backup_path"; then
  printf "[$date_format] BACKUP SUCCESS!\n" >> $log_file
else
  printf "[$date_format] BACKUP ERROR!\n" >> $log_file
fi

# delete the backups that has X days
find $external_storage -mtime +10 -delete

