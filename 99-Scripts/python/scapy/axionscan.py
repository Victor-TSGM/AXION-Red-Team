#!/usr/bin/python3
from scapy.all import *
import sys

#conf.verb = 0

portas = [21,22,23,445,110]

pIP = IP(dst=sys.argv[1])
pTCP = TCP(dport=portas, flags="S")
pacote = pIP/pTCP
resp, noresp = sr(pacote)
resp.summary()
