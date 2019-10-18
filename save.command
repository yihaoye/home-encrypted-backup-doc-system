cd $HEBDS_DIR_PATH

tar -zcvf encrypted_dir.tar.gz ./encrypted_dir
rm -rf ./encrypted_dir
openssl aes-256-cbc -in encrypted_dir.tar.gz -out encrypted_dir.aes
rm -r encrypted_dir.tar.gz

git add .
epochTime=$(date '+%Y%m%d %H%M%S')
git commit -m "${epochTime}"

rm -rf "${HEBDS_BACKUP_PATH}/*"
cp ./* HEBDS_BACKUP_PATH