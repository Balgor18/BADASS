import socket
import struct

MCAST_GRP = '239.1.1.1'
MCAST_PORT = 5004
INTERFACE_IP = '30.1.1.1'  # Remplacez par l'adresse IP de votre interface locale

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)

# Utilisez l'adresse IP de l'interface spécifique pour l'envoi multicast
sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_IF, socket.inet_aton(INTERFACE_IP))

sock.sendto(b"Hello, Multicast!", (MCAST_GRP, MCAST_PORT))
