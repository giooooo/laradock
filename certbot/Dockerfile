FROM phusion/baseimage:latest

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

# Custom build instructions
COPY run-certbot.sh /root/certbot/run-certbot.sh

USER root

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:certbot/certbot \
    && apt-get update \
    && apt-get install -y python-certbot-nginx

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT bash -c "bash /root/certbot/run-certbot.sh && sleep infinity"
