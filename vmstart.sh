#!/bin/bash
vm=${1:-sanubuntu}

case $vm in

	2|sanubuntu2) vm_name="sanubuntu2";;

	3|sanubuntu3) vm_name="sanubuntu3";;
	*) vm_name="sanubuntu";;
esac

VBoxManage startvm $vm_name --type headless 
