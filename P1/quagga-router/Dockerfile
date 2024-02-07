FROM ubuntu:18.04

# Mise à jour des paquets et installation de Quagga
RUN apt update && apt install -y quagga quagga-doc

# Vérification de l'existence du dossier /etc/quagga et création si nécessaire
RUN mkdir -p /etc/quagga

# Création des fichiers de configuration vides pour Quagga, si ce n'est déjà fait
RUN touch /etc/quagga/zebra.conf \
    && touch /etc/quagga/vtysh.conf \
    && touch /etc/quagga/ospfd.conf \
    && touch /etc/quagga/bgpd.conf \
    && touch /etc/quagga/isisd.conf \
    && touch /etc/quagga/daemons

# Configuration des démons Quagga dans le fichier 'daemons'
RUN sed -i 's/zebra=no/zebra=yes/' /etc/quagga/daemons \
    && sed -i 's/bgpd=no/bgpd=yes/' /etc/quagga/daemons \
    && sed -i 's/ospfd=no/ospfd=yes/' /etc/quagga/daemons \
    && sed -i 's/isisd=no/isisd=yes/' /etc/quagga/daemons

CMD ["/bin/bash"]

