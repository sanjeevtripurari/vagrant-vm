#!/bin/bash

a=$1

case $a in
	1) ssh vagrant@192.168.90.10;;
	2) ssh vagrant@192.168.90.20;;
	*) ssh vagrant@192.168.90.10;;
esac
