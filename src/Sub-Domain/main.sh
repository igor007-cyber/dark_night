#!/bin/bash
  
#Variavel Globla
export dominio=$(echo "$1" | sed -E 's|^(https?://)?(www\.)?([^/?]+).*|\3|');

dirb_site(){
    #vai verificar diretorios
}

httprobe_site(){
    # vai verificar se o site esta ativo
}

assetfinder_site(){
    # vai verificar os subdominios
}

subfinder_gau(){
    # vai verificar os subdominios
}

gobuster_site(){
    # vai verificar diretorios
}

sublist3r_site(){
    # vai verificar os subdominios
}

subzy_site(){ # verificação de falha

}

subjack_site(){ # verificação de falha

}

dnsenum_site(){
    #   dnsenum --dnsserver 8.8.8.8 paodeacucar.com.br

}