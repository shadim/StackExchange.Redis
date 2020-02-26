#!/bin/sh

if [ "$#" -ne 0 ]; then
    exec "$@"
else
    mkdir -p /data/Temp
    mkdir -p /var/log/supervisor

    supervisord -c /etc/supervisord.conf
    sleep 3

    tail -f /var/log/supervisor/redis*.log
fi