#/bin/sh

##################################
#nginx log_roration
#
#will be exectued at 00:00 clock
#
# author erik.yu
# email yu.zhaopeng@foxmail.com
##################################

nginx_home="/usr/local/nginx/";
month=`date -d "yesterday" "+%m"`;
day=`date -d "yesterday" "+%d"`;
nginx_pid=`cat ${nginx_home}logs/nginx.pid`;

mkdir -p ${nginx_home}logs/${month}/${day};
mv ${nginx_home}logs/access.log ${nginx_home}logs/${month}/${day}/access-${month}-${day}.log
mv ${nginx_home}logs/error.log ${nginx_home}logs/${month}/${day}/error-${month}-${day}.log

kill -USR1 ${nginx_pid}

