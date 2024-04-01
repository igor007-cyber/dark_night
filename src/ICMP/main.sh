#!/bin/bash

ping($1){ 
    a="$(ping -c 1 -4 "$1")"
    echo "$a" | grep "PING" | cut -d " " -f3 | tr "()" " " | cut -d " " -f2
}

dig($1){
    a="$(dig "$1")"
    echo "$a" | grep "IN"
}

traceroute($1){
    traceroute -n "$1" | awk '{print $2}' | grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}'
}

nmap($1){
   bash nmapAutomator.sh -H $1 -t recon -o nmap.txt
}

todos($1){
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
nmap $1
