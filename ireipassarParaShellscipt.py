# isso aqui e pra passar pra shellscript com chatgpt
# ele vai ficar no arquivo principal
# com isso nós iremos chamar as funçoes de cada arquivo com base nos comandos.
# pra tu entender o que isso faz é mais ou menos assim :
# python nome_arquivo -fuzz [nome do site]

import argparse
from teste import todos

# Analisar os argumentos da linha de comando
parser = argparse.ArgumentParser(description='DARK NIGHT')
parser.add_argument('-icmp', '--ICMP', help='Aqui ele ira te mostrar o IP, NMAP, TRACEROUTE, DIG POR COMPLETO', required=True)
parser.add_argument('-fuzz', '--FUZZ', help='Aqui voce vai fazer o fuzzy', required=True)
parser.add_argument('-dns', '--DNS', help='Nome do dominio', required=True)
parser.add_argument('-d', '--dominio', help='Aqui ele lhe mostrará todos os dominios do site', required=True)
parser.add_argument('-s', '--subdomio', help='Aqui ele lhe mostrará todos os subdominios do site', required=True)
parser.add_argument('-v', '--verbose', help='Vai exibir a execução do arquivo', required=True)
parser.add_argument('-o', '--output', help='Output file name [by default it is \'domain.txt\']')
args = parser.parse_args()

# Chamando a função 'todos' do script 'teste.py' com base nos argumentos fornecidos
todos(args.ICMP)


