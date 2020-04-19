#!/bin/sh

printf "key id: "
read MYKEYID
export MYKEYID

printf "passphrase: "
read -s PPHARASE
export PPHARASE

export MYSID=`echo $MYKEYID|sed -e 's/^.*\(.\{8\}\)$/\1/'`

alias gpg-ad='gpg -ad --pinentry-mode loopback --passphrase $PPHARASE'
alias gpg-aer='gpg -aer $MYKEYID --pinentry-mode loopback --passphrase $PPHARASE'
