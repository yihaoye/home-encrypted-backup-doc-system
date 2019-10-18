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
  
To be convenient, make script file sync.sh clickable, this step is optional:  
* First, run shell command ```chmod a+x save.sh``` and ```chmod a+x edit.sh```
* Then, in Finder, right-click your file and select "Open with" and then "Other...".
* Here you select the application you want the file to execute into, in this case it would be Terminal. To be able to select terminal you need to switch from "Recommended Applications" to "All Applications". (The Terminal.app application can be found in the Utilities folder)
* NOTE that unless you don't want to associate all files with this extension to be run in terminal you should not have "Always Open With" checked.
* After clicking OK you should be able to execute you script by simply double-clicking it.
  
Work step:  
1. run edit.sh, get editable folder
2. edit your folder
3. run save.sh
4. cleanup the removed files/folders in your bin