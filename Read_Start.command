HEBDS_DIR_PATH=~/home-encrypted-backup-doc-system
HEBDS_BACKUP_PATH=~/Google\ Drive/encrypt_backup

cd $HEBDS_DIR_PATH

openssl aes-256-cbc -d -in encrypt_dir.aes -out encrypt_dir.tar.gz
tar -zxvf encrypt_dir.tar.gz
rm -r encrypt_dir.tar.gz

if [ -d encrypt_dir ]
then
    rm -r encrypt_dir.aes
    mv .Read_Stop.command Read_Stop.command
    mv Edit_Start.command .Edit_Start.command
    mv Read_Start.command .Read_Start.command
    mv Pull_Sync.command .Pull_Sync.command
fi