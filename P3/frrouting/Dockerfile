FROM frrouting/frr:latest

RUN \
  echo 'service integrated-vtysh-config' > /etc/frr/vtysh.conf && \
  sed -i \
    -e 's/bgpd=no/bgpd=yes/g' \
    -e 's/ospfd=no/ospfd=yes/g' \
    -e 's/isisd=no/isisd=yes/g' \
  /etc/frr/daemons

COPY ./config.sh /config.sh
COPY ./confRR /confRR
COPY ./confR1 /confR1
COPY ./confR2 /confR2
COPY ./confR3 /confR3
RUN chmod +x /config.sh
