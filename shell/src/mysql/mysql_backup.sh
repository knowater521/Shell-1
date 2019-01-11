#!/bin/bash

################mysql 数据库备份脚本##############
#	添加定时任务，每晚2点钟执行                     
#   crontab -e                                  
#   0 2 * * * sh /root/mysql_backup.sh            
#                                                
#   俞兆鹏                                         
#   yu.zhaopeng@foxmail.com                      
#                                                 
##################################################

#数据库用户
declare -r mysql_user='root'
#数据库密码
declare -r mysql_password='password'
#要备份的数据库
declare -r database_name='clouddb'
#格式化日期
declare -r today=`date -d today +"%Y-%m-%d"`

mysqldump -u${mysql_user} -p${mysql_password} ${database_name} > ${database_name}-${today}.sql
