

echo "                                                        #";
echo "                                                      #    #";
echo "                                                    #      #";
echo "                                                  #      #  ";
echo "                                                #      #    ";
echo "                                              #      #      ";
echo "                     ########################      #        ";
echo "                  #                  ####      ##           ";
echo "               #                              ######     ###";
echo "           #        ################## # #  #    ###########";
echo "        #      ######::          ##    ## #####      #";
echo "     #        ######           o         ########      #";
echo "  #      ########              #       ++##########      #";
echo "#      ##########         #    #   #   ##############      #";
echo "#      ############      # #   #  # #    #############        ";
echo "#    ##############     #   #  # #   #     ############    #";
echo "#      ############    #     # # #    #    ##########      #";
echo "  #      ##########   #        #       #   #########      #";
echo "    #      ########         𝓶𝓲𝓰𝓸𝓻      #########      #";
echo "      #      @@####                    #######--      #";
echo "          m                          ########     #";
echo "           #        ##################        #";
echo "            #                              #";
echo "           #      ####                  #";
echo "        #      #########################";
echo "      #      #";
echo "    #      #";
echo "  #      #";
echo "#      #";
echo "#    #"; 
echo " #";
sleep 1;
# verificar o site  
if [ -z "$1" ]; then
    echo "Por favor, forneça a URL como argumento.";
    exit 1;
fi

# Extrair o domínio usando sed
dominio=$(echo "$1" | sed -E 's|^(https?://)?(www\.)?([^/?]+).*|\3|');

#!/bin/bash

# Argumentos padrão
output_file=""
verbose=false

# Analisar os argumentos da linha de comando
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -icmp|--ICMP)
        icmp="$2"
        shift # passar para o próximo argumento após o valor de -icmp
        shift # passar para o próximo argumento
        ;;
        -o|--organizar)
        output_file="$2"
        shift # passar para o próximo argumento após o valor de -o
        shift # passar para o próximo argumento
        ;;
        -v|--verbose)
        verbose=true
        shift # passar para o próximo argumento após o valor de -v
        ;;
        *)    # argumento desconhecido
        shift # passar para o próximo argumento
        ;;
    esac
done

# Verificar se o argumento -icmp foi fornecido
if [ -z "$icmp" ]; then
    echo "O argumento -icmp é obrigatório"
    exit 1
fi

# Chamar o script teste.sh com base no argumento ICMP e salvar a saída no arquivo especificado, se fornecido
if [ -n "$output_file" ]; then
    if [ "$verbose" = true ]; then
        bash ICMP/main.sh "$icmp" > "$output_file"
        echo "Resultados salvos em: $output_file"
    else
        bash ICMP/main.sh "$icmp" > "$output_file" 2>/dev/null
    fi
else
    if [ "$verbose" = true ]; then
        bash ICMP/main.sh "$icmp"
    else
        bash ICMP/main.sh "$icmp" 2>/dev/null
    fi
fi
