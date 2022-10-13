#!/bin/bash

os=$(cat /etc/os-release | grep "PRETTY" | cut -c13-)
mem=$(cat /proc/meminfo | grep "MemTotal" | cut -c18-)
archquitecture=$(lscpu | grep "Archi" | cut -c34-)

echo -e "Sitema operativo: \t$os \nMemoria RAM: \t\t$mem \nArquitectura: \t\t$archquitecture"