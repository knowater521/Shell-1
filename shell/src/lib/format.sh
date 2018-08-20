#########################################################################
# File Name: format.sh
# Author: Erik Yu
# mail: yu.zhaopeng@foxmail.com
# Created Time: Mon 06 Aug 2018 04:37:23 PM CST
# Purpose: 
#########################################################################
#!/bin/bash

function table_fmt(){
while (( $#>0  ))
do
	echo -n -e  "$1\t" ;
	shift;
done
echo " ";
}

