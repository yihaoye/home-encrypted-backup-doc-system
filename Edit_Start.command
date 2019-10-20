HEBDS_DIR_PATH=~/home-encrypted-backup-doc-system
HEBDS_BACKUP_PATH=~/Google\ Drive/encrypt_backup

cd $HEBDS_DIR_PATH

cp -rf "${HEBDS_BACKUP_PATH}/encrypt_dir.aes" ./encrypt_dir.aes
cp -rf "${HEBDS_BACKUP_PATH}/.git" ./.git

if [ ! -d "encrypt_dir.aes" ]; then
    mkdir encrypt_dir
else
    openssl aes-256-cbc -d -in encrypt_dir.aes -out encrypt_dir.tar.gz
    rm -r encrypt_dir.aes
    tar -zxvf encrypt_dir.tar.gz
    rm -r encrypt_dir.tar.gz
fi

mv .Edit_Stop.command Edit_Stop.command
mv Edit_Start.command .Edit_Start.command
mv Read_Start.command .Read_Start.command
mv Pull_Sync.command .Pull_Sync.command