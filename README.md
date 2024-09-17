- This script makes a backup of files you want and compress them into a tar.gz
file and put into a device you choose.

### To run:
- First, in `backup.sh` line 4 edit: `backup_path="type here the file or folder path that you wanna do the backup"` to choose which folders you want make the backup.

- Second, mount your device in `external_storage="/mnt/backup"`(or other path you want).

- Move `backup.sh` file to `/usr/local/sbin` path(or if you move this for other place, you can.
    Its doesnot affect the code). Execute as root `crontab -e` and put this path at the end of file.
    With cron expression, the script will be execute in the time you especify.
```
    $ crontab -e
```
- cron expression example at the end of line:
```
    0 15 * * * /usr/local/sbin/backup.sh
```


### Give permission:
- Give permission to execute the file(if you do not configure a cron expression and want execute manully).
```
    chmod u+x backup.sh
```

### Executing
```
    ./backup.sh
```
