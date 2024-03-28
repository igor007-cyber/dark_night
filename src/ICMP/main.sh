Ping(x){
    a="$(ping -c 1 -4 x)"; 
    echo $a | grep "PING" | cut -d " " -f3 | tr "()" " " | cut -d " " -f2
    return a
}

Dig(x){
    a="$(dig google.com)"; 
    echo $a | grep "IN" 
}


