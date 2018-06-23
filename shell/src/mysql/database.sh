#!/bin/sh

# auto  execute sql script

readonly user="you mysql username"
readonly password="your password"

ls *.sql | while read file
do
	echo "filename:  $file"
	mysql -u${user} -p${password} <<EOF 
	    use foo
	    source $file
EOF
echo
done
