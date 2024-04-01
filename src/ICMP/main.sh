# igor

ping(x){
    a="$(ping -c 1 -4 x)"; 
    echo $a | grep "PING" | cut -d " " -f3 | tr "()" " " | cut -d " " -f2
    return a
}

dig(x){
    a="$(dig x)"; echo $a | grep "IN" 
    return a
}

traceroute(x){
    ips=$(traceroute -n x | awk '{print $2}' | grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}')
    return ips
}

nmap(x){
    nmap_output=$(nmap -sS -sV "$x")

    # Extrair e imprimir as informações
    echo "$nmap_output" | awk '/\/tcp/{print "Port: "$1", State: "$2", Service: "$3", Version: "$4}'

}

todos(x){
    nmap(x)
    traceroute(x)
    dig(x)
    ping(x)
}