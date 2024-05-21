#!/bin/bash

# Prevent unexpected situations
rm -rf /start.sh

# Wait for MySQL to start
service mariadb restart
until mysqladmin ping &>/dev/null; do
    sleep 1
done

# Import data.sql into MySQL
if [ -f /tmp/data.sql ]; then
	mysql -uroot -proot < /tmp/data.sql
	rm -f /tmp/data.sql
fi

# Set flag
mysql -uroot -proot -e "update ctf.flag set flag='$FLAG';"
# echo $FLAG > /flag
export FLAG=not_flag
FLAG=not_flag

# Start apache
service apache2 restart
sleep 3

# Prevent container from exiting
tail -f /dev/null
