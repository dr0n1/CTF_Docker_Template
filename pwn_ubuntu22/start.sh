#!/bin/sh

rm -f /start.sh

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

echo "$flag_value" > /home/ctf/flag

/etc/init.d/xinetd start;
sleep infinity;