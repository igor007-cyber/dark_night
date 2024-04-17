#bin/bash

#Variavel Globla
export dominio=$(echo "$1" | sed -E 's|^(https?://)?(www\.)?([^/?]+).*|\3|');

magicRecon(){
    
}