#!/bin/bash

certbot certonly -n --webroot -w /var/www/swinecart -d "$CN" --agree-tos --email "$EMAIL" --text

cp /etc/letsencrypt/live/"$CN"/cert.pem /var/certs/cert.pem
cp /etc/letsencrypt/live/"$CN"/privkey.pem /var/certs/privkey.pem
