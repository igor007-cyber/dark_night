# isso aqui e pra passar pra shellscript com chatgpt
# ele vai ficar no arquivo principal
# com isso nós iremos chamar as funçoes de cada arquivo 

import argparse

parser = argparse.ArgumentParser(description='DARK NIGTH')
parser.add_argument('-icmp', '--ICMP', help='Nome do dominio', required=True)
parser.add_argument('-fuzz', '--FUZZ', help='Nome do dominio', required=True)
parser.add_argument('-dns', '--DNS', help='Nome do dominio', required=True)
parser.add_argument('-d', '--dominio', help='Nome do dominio', required=True)
parser.add_argument('-s', '--subdomio', help='Nome do dominio', required=True)
parser.add_argument('-', '--FUZZ', help='Nome do dominio', required=True)

parser.add_argument('-o', '--output', help='Output file name [by default it is \'domain.txt\']')
args = parser.parse_args()

