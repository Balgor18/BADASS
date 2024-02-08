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

