#!/bin/bash
#select loop

select name in krish mukul shyam ram
do

	case $name in
	krish)
		echo krish selected
		;;
	mukul)
		echo mukul selected
		;;
	shyam)
		echo shyam selected
		;;
	ram)
		echo ram selected
		;;
	*)
		echo "Error please select the no. between 1...4"
	esac
done
