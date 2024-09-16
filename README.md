- This script makes a backup of files you want and compress them into a tar.gz
file and put into a device you choose.

- Move `backup.sh` file to `/usr/local/sbin` path(or if you move this for other place, you can.
    Its doesnot affect the code). Execute as root `crontab -e` and put this path at the end of file.
    With cron expression, the script will be execute in the time you especify.
```
    $ crontab -e
```
    - cron expression at the end of line:
```
    0 15 * * * /usr/local/sbin/backup.sh
```

### Give permission:
- Give permission to execute the file.
```
    chmod u+x backup.sh
```

### Executing
```
    ./backup.sh
```
