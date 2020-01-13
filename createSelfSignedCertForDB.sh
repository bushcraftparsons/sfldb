#!/bin/bash
openssl req -new -text -passout pass:abcd -subj /CN=sfl.formyer.com -config SAN.cnf -out pgserver.req -keyout pgprivkey.pem
openssl rsa -in pgprivkey.pem -passin pass:abcd -out pgserver.key
openssl req -x509 -days 2048 -in pgserver.req -text -key pgserver.key -out pgserver.crt
cat pgserver.key > pgserver.pem
cat pgserver.crt >> pgserver.pem