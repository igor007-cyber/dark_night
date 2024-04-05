    #!/bin/bash
    
#Variavel Globla
export dominio=$(echo "$1" | sed -E 's|^(https?://)?(www\.)?([^/?]+).*|\3|');
    
ping_ip(){ 
    a="$(ping -c 1 -4 "$dominio")"
    echo "$a" | grep "PING" | cut -d " " -f3 | tr "()" " " | cut -d " " -f2
}

dig_ip(){
    a="$(dig "$dominio")"
    echo "$a" | grep "IN"
}

traceroute_ip(){
    traceroute -n "$dominio" | awk "{print $2}" | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}"
}

nmap_ip(){
cd src/ICMP && bash nmapAutomator.sh -H $1 -t recon -o nmap.txt
}

whatweb_i(){
    whatweb $dominio -v

}

todos(){

    echo -e "\n RESULTADO DO NMAP: \n"
    nmap_ip "$dominio"

    echo -e "\n\n RESULTADO DO TRACEROUTE: \n"
    traceroute_ip "$dominio"

    echo -e "\n\n RESULTADO DO DIG: \n"
    dig_ip "$dominio"

    echo -e "\n\n RESULTADO DO PING: \n"
    ping_ip "$dominio"

    echo -e "\n\n RESULTADO DO WHATWEB: \n"
    whatweb_i "$dominio"
}
# Exemplo de uso:

todos "$dominio"
