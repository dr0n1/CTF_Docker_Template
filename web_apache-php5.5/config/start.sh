#!/bin/bash

rm -rf /start.sh

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

# echo "$flag_value" > /flag
#chmod 744 /flag
sed -i "s/flag_here/$(echo $flag_value|base64)/g" /var/www/html/js/script.js

service apache2 start

tail -f /dev/null