# home-encrypted-backup-doc-system
  
This solution system allow you and your family safely access, store, backup your sensitive files or data locally and on cloud.  
To implement this system, please follow the following steps:  
* OS support (Mac only so far)
1. install git locally (enable version control function)
2. install tar and openssl locally (enable encryption function)
3. signup a Google Drive account and install Google Drive's backup and sync app (enable cloud backup function)
4. download this repo within path ```~/```, setting Google Drive app backup and sync all the time, create a empty folder named ```encrypt_backup``` on Google Drive's My Drive root path, so ```encrypt_backup``` local path should be ```~/Google\ Drive/encrypt_backup```.
  
Work flows:  
* Start edit your folder/directory:
    1. click Edit_Start.command, get editable folder
    2. edit your folder
    3. click Edit_Stop.command
* View only with your folder/directory:
    1. click Read_Start.command, get decrypted folder
    2. view your folder
    3. click Read_Stop.command
* Download/Sync backup from cloud to local:
    1. click Pull_Sync.command
  
### About
*$HEBDS_DIR_PATH: current repository's path, i.e. your edit path for sensitive files*
*$HEBDS_BACKUP_PATH: Google Drive backup and sync dir path*