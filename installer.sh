#! /bin/bash

echo 'create key directory'
mv ../crypt-tools ../crypt
mkdir ~/me/lib/keys
echo "alias decryptd-unseal='~/me/app/crypt/decryptd-unseal.sh'" >> ~/.bashrc
echo "alias encryptd-seal='~/me/app/crypt/encryptd-seal.sh'" >> ~/.bashrc
echo "aliases created. please restart bash" 
echo "make sure to populate ~/me/lib/keys/kane.key"
echo "alias encrypt='~/me/app/crypt/encrypt.sh'" >> ~/.bashrc
echo "alias decrypt='~/me/app/crypt/decrypt.sh'" >> ~/.bashrc
echo "alias encryptd='~/me/app/crypt/encryptd.sh'" >> ~/.bashrc
echo "alias decryptd='~/me/app/crypt/decryptd.sh'" >> ~/.bashrc
echo "alias keygen='~/me/app/crypt/keygen'" >> ~/.bashrc

