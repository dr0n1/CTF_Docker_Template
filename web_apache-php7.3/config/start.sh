#!/bin/bash

# Prevent unexpected situations
rm -rf /start.sh

# Set flag
echo $FLAG > /flag
export FLAG=not_flag
FLAG=not_flag
chmod 744 /flag

# Start apache
service apache2 start

# Prevent container from exiting
tail -f /dev/null