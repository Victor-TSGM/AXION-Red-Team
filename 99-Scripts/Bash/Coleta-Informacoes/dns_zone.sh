#!/bin/bash

echo -e "\e[32m=================================================\e[1m"
echo -e "\e[32m========== AXION SECURITY - DNS ZONE ============\e[1m"
echo -e "\e[32m=================================================\e[1m"


if [ $1 == " " ];then
	echo -e "\e[34mModo de uso: ./dns-zone.sh <target>\e[1m"
else 


	for server in $(host -t ns $1 | cut -d " " -f4 );do
		host -l -a $1 $server
	done;
fi

