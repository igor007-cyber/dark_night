

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

