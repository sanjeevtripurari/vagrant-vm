#!/bin/bash

a=$1

case $a in
	3) ssh sanjeev@192.168.105.3;; 
	4) ssh sanjeev@192.168.105.4 ;;
	*) ssh sanjeev@192.168.105.2 ;;
esac
