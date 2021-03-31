#!/bin/bash
# create test keys - all no password -3des needs password
openssl genrsa -out CA-allan-private.key 4096
openssl req -x509 -new -nodes -key CA-allan-private.key -sha256 -days 1825 -out CA-allan.pem -subj "/C=GB/ST=Scotland/L=Edinburgh/O=allan UK/OU=Raspberry Pi Test Env/CN=www.allan.private"
File="hostnames.txt"
Lines=$(cat $File)
for Line in $Lines
do
  openssl genrsa -out $Line-private.key 4096
  openssl req -new -key $Line-private.key -out $Line-private.key.csr -subj "/C=GB/ST=Scotland/L=Edinburgh/O=allan UK/OU=Raspberry Pi Test Env/CN=$Line.allan.private"
  openssl x509 -req -in $Line-private.key.csr -CA CA-allan.pem -CAkey CA-allan-private.key -CAcreateserial -out $Line.allan.private.crt -days 825 -sha256
done
