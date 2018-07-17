#!/bin/bash

#用于彩色输出消息
#作者 erik.yu
#日期 2018.7.16

error(){
	echo -e "\033[40;31m[ERROR] $@  \033[0m" 1>&2
}

warn(){
	#echo -e "\033[40;33;5m[WARNING] $@  \033[0m" 1>&2
	echo -e "\033[40;33m[WARNING] $@  \033[0m" 1>&2
}

success(){
	echo -e "\033[40;32m[SUCCESS] $@  \033[0m" 
}

info(){
	echo -e "\033[40;37m[INFO] $@  \033[0m" 
}
