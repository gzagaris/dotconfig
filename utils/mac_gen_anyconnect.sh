#!/usr/bin/env bash
#------------------------------------------------------------------------------
# This scripts generates anyconnect configuration files for each certificate
# associated with a CAC.
#
# Author: George Zagaris (george.zagaris@us.af.mil)
# Date: 03/16/2022
#------------------------------------------------------------------------------

reset=$(tput sgr0)
bold=$(tput bold)

ANYCONNECT_INPUT_FILE=$HOME/.anyconnect
if [ ! -f "$ANYCONNECT_INPUT_FILE" ]; then
  echo "$bold[ERROR]:$reset cannot find $bold[$ANYCONNECT_INPUT_FILE]$reset"
  exit -1;
fi

## get all the certificates
security export-smartcard | grep sha1 | awk -F[\<\>] '{print $2}' | tr -d '[:blank:]' | tr [a-z] [A-Z] > mycertificates;

## loop over each certificate and generate a corresponding .anyconnect file
for cert in `cat mycertificates`
do
  echo "$bold[INFO]:$reset $cert"
  sed "s/\<ClientCertificateThumbprint\>.*\<\/ClientCertificateThumbprint\>/\<ClientCertificateThumbprint\>$cert\<\/ClientCertificateThumbprint\>/" $ANYCONNECT_INPUT_FILE > anyconnect.$cert
done

rm mycertificates
echo "$bold[INFO]: Done!"

