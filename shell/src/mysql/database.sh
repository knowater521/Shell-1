#!/bin/sh
# auto  execute sql script

user="you mysql username"
password="your password"

ls *.sql | while read file
do
	echo "filename:  $file"
	mysql -u${user} -p${password} <<EOF 
	    use foo
	    source $file
EOF
echo
done
