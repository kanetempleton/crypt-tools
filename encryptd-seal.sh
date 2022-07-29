#! /bin/bash

if [ $# -ne 1 ]; then
echo 'usage: encryptd-seal <dir>'
else

~/me/app/crypt/encryptd.sh $1
zip -r $1.zip $1 -x "*.DS_Store"
mv $1.zip ./$1.seal
rm -rf $1
fi
