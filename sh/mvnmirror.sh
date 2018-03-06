#!/bin/bash
PS3='Please enter your choice: '
options=("settings.xml.aliyun" "settings.xml.work" "quit")
select opt in "${options[@]}"
do
	case $opt in
	"quit")
	break
	;;
	*) 
	ln -sf $opt settings.xml
	echo "change to $opt"
	break
	;;
	esac
done
