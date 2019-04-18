!/bin/bash

################mysql 数据库备份脚本##############
#       添加定时任务，每晚2点钟执行                     
#   crontab -e                                  
#   0 2 * * * sh /root/mysql_backup.sh            
#                                                
#   俞兆鹏                                         
#   yu.zhaopeng@foxmail.com                      
#                                                 
##################################################

#需要备份的文件夹数组 空格隔开
source_dir=("/home/ubuntu/docker-compose-V3/mysql/data/clouddb")
#格式化日期
declare -r today=`date -d today +"%Y-%m-%d"`
#备份文件存储路径
declare -r target_dir='/root/mysql_backup'

if [ -d ${target_dir}/${today} ]; then
    echo "directory  ${target_dir}/${today} already exists"
    exit 1
fi

#按日期建立当前的备份文件夹
mkdir ${target_dir}/${today}
#打包到指定文件夹

for (( i=0;i<${#source_dir[@]};i++))
do
    current_dir=${source_dir[$i]}
    file_name=${current_dir##*/}-$today
    echo $file_name
    tar zcPf ${target_dir}/${today}/${file_name}.tar.gz  ${current_dir}
done
