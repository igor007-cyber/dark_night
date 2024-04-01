#!/bin/bash

ping(){
    a="$(ping -c 1 -4 "$1")"
    echo "$a" | grep "PING" | cut -d " " -f3 | tr "()" " " | cut -d " " -f2
}

dig(){
    a="$(dig "$1")"
    echo "$a" | grep "IN"
}

traceroute(){
    traceroute -n "$1" | awk '{print $2}' | grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}'
}

nmap(){
    nmap_output=$(nmap -sS -sV "$1")
    echo "$nmap_output" | awk '/\/tcp/{print "Port: "$1", State: "$2", Service: "$3", Version: "$4}'
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
todos $1
