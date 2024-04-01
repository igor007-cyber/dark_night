#!/bin/bash

ping_ip(){ 
    a="$(ping -c 1 -4 "$1")"
    echo "$a" | grep "PING" | cut -d " " -f3 | tr "()" " " | cut -d " " -f2
}

dig_ip(){
    a="$(dig "$1")"
    echo "$a" | grep "IN"
}

traceroute_ip(){
    traceroute -n "$1" | awk "{print $2}" | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}"
}

nmap_ip(){
   bash nmapAutomator.sh -H $1 -t recon -o nmap.txt
}

todos(){
    echo -e "\n RESULTADO DO NMAP: \n"
    nmap_ip "$1"
    echo -e "\n\n RESULTADO DO TRACEROUTE: \n"
    traceroute_ip "$1"
    echo -e "\n\n RESULTADO DO DIG: \n"
    dig_ip "$1"
    echo -e "\n\n RESULTADO DO PING: \n"
    ping_ip "$1"
}

# Exemplo de uso:
todos "$1"
