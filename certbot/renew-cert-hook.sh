#!/bin/bash

# After a successful renewal of SSL certificate/s,
# just copy the certificates to the
# specfied volume for update
cp /etc/letsencrypt/live/"$CN"/cert.pem /var/certs/cert.pem
cp /etc/letsencrypt/live/"$CN"/privkey.pem /var/certs/privkey.pem                                           
