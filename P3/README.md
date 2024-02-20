##BGP (Border Gateway Protocol)

## EVPN (Ethernet virtual private network)

## VTEP (Vxlan tunel endpoint)

## Annonce BGP EVPN : 

Les VTEP annoncent les addresse MAC et IP des hosts qui se connecte au Vxlan a travers des messages BGP EVPN.   
Cela permet la decouverte dynamique des hotes et la construction d'une table de routage MAC dans le reseau.    

## RR (route reflectieur)

Route reflectieur est un routeur autorise a redistribuer les ip recus par un routeur (LEAFS) au autres LEAFS 

## LO

lo va avoir l'ip de transmitions des host. RR va etres configurer pour avoir bgp qui va recevoir toutes les lo des leafs.

```
interface Loopback0
 ip address 1.1.1.1/32

interface Ethernet0
 ip address <IP-ADDRESS-ETH0>/24

interface Ethernet1
 ip address <IP-ADDRESS-ETH1>/24

interface Ethernet2
 ip address <IP-ADDRESS-ETH2>/24
```

```
router bgp <AS-NUMBER>
 bgp router-id 1.1.1.1
 bgp log-neighbor-changes
 neighbor LEAFS peer-group
 neighbor LEAFS remote-as <AS-NUMBER>
 neighbor LEAFS update-source Loopback0
 neighbor <IP-LEAF1> peer-group LEAFS
 neighbor <IP-LEAF2> peer-group LEAFS
 neighbor <IP-LEAF3> peer-group LEAFS

```
```
address-family l2vpn evpn
 neighbor LEAFS activate
```
```
neighbor LEAFS route-reflector-client
```

au dessus de cela je dois configurer le Vxlan sans specifier les ip (configurer plus tard dans vtysh)   
```sh
#!/bin/sh

ip link add name vxlan10 type vxlan id 10 dstport 4789

ip link add name br0 type bridge
ip link set eth1 master br0
ip link set vxlan10 master br0
ip link set br0 up
ip link set vxlan10 up
```

