#!/bin/bash
vehicle=$1
case $vehicle in 
	"car")
		echo "Rent of $vehicle is Rs1000"
		;;
	"truck")
		echo "Rent of $vehicle is Rs2000"
		;;
	"Bus")
		echo "Rent of $vehicle is Rs3000"
		;;
	*)
		echo "unknown vehicle"
		;;
esac
