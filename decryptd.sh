
#! /bin/bash

if [ $# -ne 1 ]; then
echo 'usage: decryptd <dir>'
else


for f in $1/*; do
if [ -d $f ]; then
~/me/app/crypt/decryptd.sh $f
else
~/me/app/crypt/otp ~/me/lib/keys/kane.key $f $f
fi
done

fi
