#########################################################################
# File Name: log.sh
# Author: Erik Yu
# mail: yu.zhaopeng@foxmail.com
# Created Time: Sat 04 Aug 2018 03:18:01 PM CST
#########################################################################
#!/bin/bash

#用于彩色输出消息
#作者 erik.yu
#日期 2018.7.16

declare time=`date -d now "+%Y/%m/%d-%H:%M:%S"`;

error(){
		echo -e "\033[40;31m${time} [ERROR] $@  \033[0m" 1>&2
}
	
warn(){
		#echo -e "\033[40;33;5m [WARNING] $@  \033[0m" 1>&2
		echo -e "\033[40;33m${time} [WARNING] $@  \033[0m" 1>&2
}
			
success(){
		echo -e "\033[40;32m${time} [SUCCESS] $@  \033[0m" 
}
				
info(){
		echo -e "\033[40;37m${time} [INFO] $@  \033[0m" 
}

