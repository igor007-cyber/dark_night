#!/bin/bash
  
#Variavel Globla
export dominio=$(echo "$1" | sed -E 's|^(https?://)?(www\.)?([^/?]+).*|\3|');

# sort -u [arquivo] -o [novo.arquivo] —> ele vai tirar palavras repetidas

# cat newthings.txt | anew things.txt -> Anexe linhas de stdin a um arquivo, mas 
# somente se elas ainda não aparecerem no arquivo. Também gera novas linhas para 
# stdout, tornando-o um pouco como um tee -a que remove duplicatas.

dirb_site(){
    #vai verificar diretorios
}

gobuster_site(){
    # vai verificar diretorios
}

knock_site(){
     # vai verificar os subdominios
}

assetfinder_site(){
    # vai verificar os subdominios
}

subfinder_gau(){
    # vai verificar os subdominios
}


sublist3r_site(){
    # vai verificar os subdominios
}

httprobe_site(){
    # vai verificar se o site esta ativo
}

subzy_site(){ # verificação de falha

}

subjack_site(){ # verificação de falha

}

dnsenum_site(){
    #   dnsenum --dnsserver 8.8.8.8 paodeacucar.com.br

}