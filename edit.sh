cd $HEBDS_DIR_PATH

rm -rf ./*
cp "${HEBDS_BACKUP_PATH}/*" .

openssl aes-256-cbc -d -in encrypted_dir.aes -out encrypted_dir.tar.gz
rm -r encrypted_dir.aes
tar -zxvf encrypted_dir.tar.gz
rm -r encrypted_dir.tar.gz