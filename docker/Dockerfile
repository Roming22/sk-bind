FROM resin/rpi-raspbian

RUN apt-get update \
 && apt-get install -y bind9 dnsutils gettext-base \
 && apt-get clean \
 && mkdir /var/bind \
 && chown bind:bind /var/bind \
 && mkdir -p /var/run/named \
 && chown bind:bind /var/run/named

ADD bind /opt/bind

ENTRYPOINT ["/opt/bind/bin/bind.sh"]

EXPOSE 53
