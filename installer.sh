#! /bin/bash

echo 'create key directory'
mv ../crypt-tools ../crypt
mkdir ~/me/lib/keys
echo "alias decryptd-unseal='~/me/app/crypt/decryptd-unseal.sh'" >> 
~/.zshrc
echo "alias encryptd-seal='~/me/app/crypt/encryptd-seal.sh'" >> ~/.zshrc
echo "aliases created. please restart zsh" 
echo "make sure to populate ~/me/lib/keys/kane.key"
echo "alias encrypt='~/me/app/crypt/encrypt.sh'" >> ~/.zshrc
echo "alias decrypt='~/me/app/crypt/decrypt.sh'" >> ~/.zshrc
echo "alias encryptd='~/me/app/crypt/encryptd.sh'" >> ~/.zshrc
echo "alias decryptd='~/me/app/crypt/decryptd.sh'" >> ~/.zshrc
echo "alias keygen='~/me/app/crypt/keygen'" >> ~/.zshrc

