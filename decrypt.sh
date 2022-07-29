
#! /bin/bash

if [ $# -ne 1 ]; then
echo 'usage: decrypt <lockfile>'
echo '*note: do not include .lock extension'
else

~/me/app/crypt/otp ~/me/lib/keys/kane.key $1 $1

fi
