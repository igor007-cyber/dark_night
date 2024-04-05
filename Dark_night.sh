#!/bin/bash

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
echo
echo

# Função para mostrar a ajuda
show_help() {
    echo "Uso: ./Dark_night.sh [OPÇÕES] -icmp <endereço_ip>"
    echo "Este script executa o programa principal com base nos argumentos fornecidos."
    echo
    echo "Opções:"
    echo "  -icmp, --ICMP <endereço_ip>    Especifica o endereço IP para execução do programa. (obrigatório)"
    echo "  -o, --organizar <nome_arquivo> Salva as informações de saída em um arquivo com o nome especificado."
    echo "  -v, --verbose                  Exibe mensagens detalhadas sobre a execução do programa."
    echo "  -h, --help                     Exibe esta mensagem de ajuda e sai."
    echo
    exit 0
}

# Verificar se o argumento -h ou --help foi fornecido
if [[ $1 == "-h" || $1 == "--help" ]]; then
    show_help
fi

# Argumentos padrão
output_file=""
verbose=false
icmp_provided=false

# Analisar os argumentos da linha de comando
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -icmp|--ICMP)
        icmp="$2"
        icmp_provided=true
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

# Verificar se o argumento -h ou --help foi fornecido, mas apenas se o argumento ICMP não foi fornecido
if [[ ( $1 == "-h" || $1 == "--help" ) && $icmp_provided == false ]]; then
    show_help
fi

# Verificar se o argumento -icmp foi fornecido
if [ -z "$icmp" ]; then
    echo "O argumento -icmp é obrigatório. Use -h ou --help para obter ajuda."
    exit 1
fi

# Chamar o script main.sh com base no argumento ICMP e salvar a saída no arquivo especificado, se fornecido
if [ -n "$output_file" ]; then
    if [ "$verbose" = true ]; then
        bash src/ICMP/main.sh "$icmp" > "$output_file"
        echo "Resultados salvos em: $output_file"
    else
        bash src/ICMP/main.sh "$icmp" > "$output_file" 2>/dev/null
    fi
else
    if [ "$verbose" = true ]; then
        bash src/ICMP/main.sh "$icmp"
    else
        bash src/ICMP/main.sh "$icmp" 2>/dev/null
    fi
fi