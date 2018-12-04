#!/bin/bash

echo `clear`
# descompacta script 1.2.3
Menu(){
   echo "------------------------------------------"
   echo "     Descompactar Arquivos no Shell       "
   echo "------------------------------------------"
   echo
   echo "[ 1 ] Arquivo zip"
   echo "[ 2 ] Arquivo 7z"
   echo "[ 3 ] Arquivo tar"
   echo "[ 4 ] Arquivo tar.gz"
   echo "[ 5 ] Sair"
   echo
   echo -n "Qual a opcao desejada ? "
   read opcao
   case $opcao in
      1) Aquivozip ;;
      2) Aquivorar ;;
      3) Aquivotar ;;
      4) Aquivotargz ;;
      5) exit ;;
      *) "Opcao desconhecida." ; echo ; Principal ;;
   esac
}
Aquivozip() {
	echo "Digite o nome do Arquivo"
	read arqzip
	unzip $arqzip
	echo
	Menu
}

Aquivorar() {

	echo "Digite o nome do Arquivo"
	read arq7z
	7z e $arq7z
	echo
	Menu
}

Aquivotar() {
	echo "Digite o nome do Arquivo"
	read arqtar
	caminho=`pwd`
	tar -xvf $arqtar -C $caminho
	echo
	Menu
}


Aquivotargz() {
	echo "Digite o nome do Arquivo"
	read arqtargz
	tar -zxvf $arqtargz
	echo
	Menu
}
Menu
