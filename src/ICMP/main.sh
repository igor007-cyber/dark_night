# igor

Ping(x){
    a="$(ping -c 1 -4 x)"; 
    echo $a | grep "PING" | cut -d " " -f3 | tr "()" " " | cut -d " " -f2
    return a
}

Dig(x){
    a="$(dig x)"; echo $a | grep "IN" 
    return a
}

Traceroute(x){
    ips=$(traceroute -n x | awk '{print $2}' | grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}')
    return ips
}

Nmap(){
    
}