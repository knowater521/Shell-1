#!/bin/bash

################mysql 数据库备份脚本##############
#       添加定时任务，每晚2点钟执行                     
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
#要备份的数据库 数组
declare -a database_array=('edb_device' 'edb_pay' 'eqplay_agent' 'eqplay_auth' 'eqplay_zipkin' 'test')
#格式化日期
declare -r today=`date -d today +"%Y-%m-%d"`
#备份路径
declare -r back_dir='/root/mysql_backup'

for database_name in ${database_array[@]}
do
        echo "start backup   $database_name "
        mysqldump -u${mysql_user} -p${mysql_password} ${database_name} >${back_dir}/${database_name}-${today}.sql 2> /dev/null
done

