#!/bin/bash

dark() {
	for i in {40..47} ; do
		echo -en "\e[${i}m  \e[0m"	
	done
}

bright() {
	for i in {100..107} ; do
		echo -en "\e[${i}m  \e[0m"	
	done
}


case $1 in
	dark)
		dark
		;;
	bright)
		bright
		;;
	both)
		dark
		echo ""
		bright
		;;
	-)
		echo -en "\e[s"
		dark
		echo -en "\e[u\e[1B"
		bright
		echo -en "\e[u"		
		;;
	*)
		echo -e "Usage:\n bright \n dark \n both"
esac

