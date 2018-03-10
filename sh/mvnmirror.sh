#!/bin/bash

PS3='Please enter your choice: '
options=($(ls $HOME/.m2|grep 'settings.xml.') "quit")
select opt in "${options[@]}"
do
	case $opt in
	"quit")
	break
	;;
	*)
		if [ ! -z "$opt"  ]
		then
			ln -sf "$HOME/.m2/${opt}" "$HOME/.m2/settings.xml"
			echo "change to $opt"
		fi
	break
	;;
	esac
done
