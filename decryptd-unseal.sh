#! /bin/bash

if [ $# -ne 1 ]; then
echo 'usage: decryptd-unseal <dir>'
else

~/me/app/crypt/decrypt.sh "$1.seal"
mv "$1.seal" "$1.zip"
unzip -q "$1.zip"
#~/me/app/crypt/decryptd.sh "$1"
rm "$1.zip"

fi
