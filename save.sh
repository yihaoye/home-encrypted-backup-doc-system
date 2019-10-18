tar -zcvf encrypted.tar.gz ./encrypted
rm -rf ./encrypted
openssl aes-256-cbc -in encrypted.tar.gz -out encrypted.aes
rm -r encrypted.tar.gz

git add .
epochTime=$(date +%s)
git commit -m epochTime

rm -rf ../backup/*
cp ./* ../backup/