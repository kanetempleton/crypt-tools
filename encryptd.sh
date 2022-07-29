
#! /bin/bash


for f in $1/*; do
if [ -d "$f" ]; then
~/me/app/crypt/encryptd.sh "$f"
else
~/me/app/crypt/otp ~/me/lib/keys/kane.key "$f" "$f"
fi
done

