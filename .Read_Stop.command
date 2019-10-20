HEBDS_DIR_PATH=~/home-encrypted-backup-doc-system
HEBDS_BACKUP_PATH=~/Google\ Drive/encrypt_backup

cd $HEBDS_DIR_PATH

tar -zcvf encrypt_dir.tar.gz ./encrypt_dir
rm -rf ./encrypt_dir
openssl aes-256-cbc -in encrypt_dir.tar.gz -out encrypt_dir.aes
rm -r encrypt_dir.tar.gz

mv Read_Stop.command .Read_Stop.command
mv .Edit_Start.command Edit_Start.command
mv .Read_Start.command Read_Start.command
mv .Pull_Sync.command Pull_Sync.command