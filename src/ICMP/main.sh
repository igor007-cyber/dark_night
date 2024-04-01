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
    traceroute -n "$1" | awk '{print $2}' | grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}'
}

nmap_ip(){
   bash nmapAutomator.sh -H $1 -t recon -o nmap.txt
}

todos(){
    echo 'RESULTADO DO NMAP:'
    nmap "$1"
    echo
    echo 'RESULTADO DO TRACEROUTE:'
    traceroute "$1"
    echo
    echo 'RESULTADO DO DIG:'
    dig "$1"
    echo
    echo 'RESULTADO DO PING:'
    ping "$1"
}

# Exemplo de uso:
todos '$1'
