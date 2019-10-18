rm -rf ./*
cp ../backup/* .

openssl aes-256-cbc -d -in encrypted.aes -out encrypted.tar.gz
rm -r encrypted.aes
tar -zxvf encrypted.tar.gz
rm -r encrypted.tar.gz