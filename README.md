## BGP by Fcatinau and Viporten


### Dependency installation for linux mint vm (ubuntu)

`ppa:gns3/ppa`

### Ffrouting
`https://www.youtube.com/watch?v=D4nk5VSUelg`

`docker pull frrouting/frr`

from the image : 

`cp /etc/frr/vtysh.conf.sample /etc/frr/vtysh.conf`

change in etc/frr/daemons 
bgpd->yes
ospfd->yes
isisd->yes

relancer les services si ca plante : `watchfrr -d zebra ospfd bgpd isisd`


## GNS3 
GNS3 est un logiciel open source pour la simulation de réseaux informatiques, permettant de tester des configurations de routeurs et de commutateurs virtuels dans un environnement simulé.   

## BGP

BGP (Border Gateway Protocol) est le protocole standard utilisé pour échanger des informations de routage entre des systèmes autonomes sur Internet, permettant ainsi la détermination des chemins les plus efficaces pour le trafic de données. Son intérêt principal réside dans sa capacité à assurer la connectivité et la stabilité d'Internet en gérant les itinéraires de données à l'échelle mondiale.   
## Layer 2, Layer 3

 Layer 2 se concentre sur la communication au sein d'un même réseau local, utilisant des adresses MAC, tandis que Layer 3 permet la communication entre différents réseaux, en utilisant des adresses IP et en gérant le routage des paquets.   

L2 : transférer les données entre les appareils sur le même réseau local (LAN) ou entre des interfaces sur un switch. Elle utilise des adresses MAC (Media Access Control) pour identifier les appareils et gère la façon dont les données sont empaquetées pour le transport. Les commutateurs (switches) sont des dispositifs typiques qui opèrent à cette couche, facilitant la communication entre les appareils connectés directement ou via des VLANs (Virtual Local Area Networks).

L3 : responsable du transfert des paquets de données entre différents réseaux, utilisant des adresses IP pour identifier les appareils source et de destination. Elle gère le routage des paquets à travers des réseaux interconnectés (internets) à l'aide de routeurs, déterminant le meilleur chemin pour les données pour atteindre leur destination finale. La couche 3 permet ainsi la communication entre des réseaux distincts, facilitant l'interconnectivité globale d'Internet.

## Packet routing service

    Packet Routing Software: Logiciel qui détermine le meilleur chemin pour les paquets de données à travers les réseaux, utilisant des protocoles comme BGP ou OSPF.

    BGPd Service Request: Demande liée au service BGP pour la mise à jour ou la configuration du routage entre différents systèmes autonomes.

    OSPFd Service Request: Demande pour le service OSPF, concernant la gestion du routage interne et la mise à jour de la topologie du réseau.

    Routing Engine Service: Composant qui exécute les calculs de routage, gère les tables de routage et dirige le trafic de données.

    BusyBox: Outil léger fournissant plusieurs commandes UNIX standard pour les systèmes embarqués ou avec ressources limitées.
