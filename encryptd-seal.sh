#! /bin/bash

if [ $# -ne 1 ]; then
echo 'usage: encryptd-seal <dir>'
else

zip -r -q "$1.zip" "$1" -x "*.DS_Store"
mv "$1" ~/.Trash
mv "$1.zip" "$1.seal"
~/me/app/crypt/encrypt.sh "$1.seal"
fi
