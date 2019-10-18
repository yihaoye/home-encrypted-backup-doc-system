# home-encrypted-backup-doc-system
  
This solution system allow you and your family safely access, store, backup your sensitive files or data locally and on cloud.  
To implement this system, please follow the following steps:  
* OS support (Mac only so far)
1. install git locally (enable version control function)
2. install tar and openssl locally (enable encryption function)
3. signup a Google Drive account and install Google Drive's backup and sync app (enable cloud backup function)
4. run shell command ```export HEBDS_DIR_PATH={your edit path}``` and ```export HEBDS_BACKUP_PATH={your backup path}```
* $HEBDS_DIR_PATH: current repository's path, i.e. your edit path for sensitive files *  
* $HEBDS_BACKUP_PATH: Google Drive backup and sync dir path *  
  
Work steps:  
1. click edit.command, get editable folder
2. edit your folder
3. click save.command
4. cleanup the removed files/folders in your bin