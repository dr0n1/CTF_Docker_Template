#!/bin/bash

rm -rf /start.sh

service mysql restart
until mysqladmin ping &>/dev/null; do
    sleep 1
done

if [ -f /tmp/data.sql ]; then
	mysql -uroot -proot < /tmp/data.sql
	rm -f /tmp/data.sql
fi

if [ "$DASFLAG" ]; then
    flag_value="$DASFLAG"
    export DASFLAG=not_flag
    DASFLAG=not_flag
elif [ "$FLAG" ]; then
    flag_value="$FLAG"
    export FLAG=not_flag
    FLAG=not_flag
elif [ "$GZCTF_FLAG" ]; then
    flag_value="$GZCTF_FLAG"
    export GZCTF_FLAG=not_flag
    GZCTF_FLAG=not_flag
else
    flag_value="flag{test}"
fi

mysql -uroot -proot -e "update ctf.flag set flag='$flag_value';"
# echo "$flag_value" > /flag

service apache2 restart
sleep 3

tail -f /dev/null
