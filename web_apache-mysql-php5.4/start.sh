#!/bin/bash

service apache2 restart
sleep 3
service mysql restart
sleep 3

if [ -f /tmp/data.sql ]; then
	mysql -uroot -proot < /tmp/data.sql
	rm -f /tmp/data.sql
fi

#set flag
mysql -uroot -proot -e "update ctf.flag set flag='$FLAG';"
#echo $FLAG > /flag
export FLAG=not_flag
FLAG=not_flag


tail -f /dev/null


