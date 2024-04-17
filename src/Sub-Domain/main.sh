#!/bin/bash
  
#Variavel Globla
export dominio=$(echo "$1" | sed -E 's|^(https?://)?(www\.)?([^/?]+).*|\3|');

# sort -u [arquivo] -o [novo.arquivo] —> ele vai tirar palavras repetidas

# cat newthings.txt | anew things.txt -> Anexe linhas de stdin a um arquivo, mas 
# somente se elas ainda não aparecerem no arquivo. Também gera novas linhas para 
# stdout, tornando-o um pouco como um tee -a que remove duplicatas.

#dirb_site(){  ------> LENTO PRA CARAI
 #   gnome-terminal -- dirb $dominio & 
#}

gobuster_site(){
  # vai verificar diretorio
    diretorio = + '$dominio' + '/'
    gobuster dir -u "$diretorio" -w ./lista/diretorios/diretorio-g.txt

}

knock_site(){
     # vai verificar os subdominios
     knockpy -d "$1" --recon --bruteforce
}

assetfinder_site(){
    assetfinder -subs-only $dominio 
}

subfinder_site(){
    subfinder -d $dominio -silent >> teste.txt | tee

}


sublist3r_site(){
    sublist3r -d $dominio -o url.txt
    cat url.txt >> teste.txt
    rm url.txt
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

httpx_site(){

}

gau_uro(){

}