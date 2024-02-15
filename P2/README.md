## P2

# VXLAN (Virtual Extensible LAN)

VXLAN est une technologie de réseau qui permet de créer des réseaux superposés (overlays) sur une infrastructure de réseau existante. Il s'agit d'une amélioration des réseaux LAN traditionnels qui permet d'augmenter l'échelle des réseaux et de surmonter certaines de leurs limitations, notamment en termes de nombre de segments de réseau (VLAN) disponibles.    

# Bridge (Pont réseau)

Un bridge est un dispositif ou une fonction logicielle qui connecte plusieurs segments de réseau pour qu'ils fonctionnent comme un seul réseau unifié. Dans le contexte des réseaux informatiques, un bridge opère à la couche 2 du modèle OSI (la couche de liaison de données), ce qui signifie qu'il peut filtrer, transmettre ou bloquer des paquets de données (trames Ethernet) en fonction de l'adresse MAC de destination.    


### Difference 

Encapsulation vs Filtrage : VXLAN utilise l'encapsulation pour créer des tunnels à travers les réseaux, permettant la communication entre des segments isolés. Les bridges utilisent le filtrage basé sur les adresses MAC pour gérer le trafic au sein d'un même réseau physique.   


### Script

```#!/bin/sh

if [ "$HOSTNAME" = "router1" ]; then
        ip addr add 10.1.1.1/24 dev eth0
        ip link add name vxlan10 type vxlan id 10 dev eth0 remote 10.1.1.2 dstport 4789
else
        ip addr add 10.1.1.2/24 dev eth0
        ip link add name vxlan10 type vxlan id 10 dev eth0 remote 10.1.1.1 dstport 4789
fi

ip link add name br0 type bridge
ip link set eth1 master br0
ip link set br0 up
ip link set vxlan10 master br0
ip link set vxlan10 up
```

Adresse IP sur eth0 : Chaque routeur reçoit une adresse IP unique sur son interface eth0 pour la communication directe entre eux.   

Création du VXLAN : Un tunnel VXLAN (vxlan10) est créé sur chaque routeur, configuré pour se connecter à l'autre routeur. Cela établit le chemin pour le trafic de couche 2 à travers le réseau de couche 3.

Détails des Commandes :

ip link add name br0 type bridge : Cette commande crée un nouveau périphérique réseau nommé br0 de type bridge. Un bridge agit comme un commutateur virtuel, permettant de connecter plusieurs interfaces réseau ensemble, de sorte qu'elles apparaissent comme étant sur le même réseau local (LAN).

ip link set eth1 master br0 : Ici, l'interface eth1 est ajoutée au bridge br0. Cela signifie que eth1, qui est connectée à un hôte, fait maintenant partie du LAN virtuel créé par le bridge. Cette action est essentielle pour intégrer les hôtes dans le réseau étendu par VXLAN.

ip link set br0 up : Cette commande active le bridge br0, le rendant opérationnel. Un périphérique doit être activé (état "UP") pour transmettre et recevoir des paquets.

ip link set vxlan10 master br0 : De manière similaire à eth1, cette commande ajoute l'interface VXLAN vxlan10 au bridge br0. Cela est crucial pour le fonctionnement de VXLAN, car cela signifie que le trafic VXLAN provenant de ou destiné à l'interface VXLAN est transmis à travers le bridge, permettant la communication entre les hôtes sur différents sous-réseaux comme s'ils étaient sur le même LAN.





