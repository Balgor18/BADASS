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
