#bin/bash

#Variavel Globla
export dominio=$(echo "$1" | sed -E 's|^(https?://)?(www\.)?([^/?]+).*|\3|');

magicRecon(){

}

dnsenum_site(){
    #   dnsenum --dnsserver 8.8.8.8 paodeacucar.com.br

}
