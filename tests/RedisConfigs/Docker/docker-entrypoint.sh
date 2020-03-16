#!/bin/sh

if [ "$#" -ne 0 ]; then
    exec "$@"
else
    mkdir -p /data/Temp/master-6379
    mkdir -p /data/Temp/secure-6381
    mkdir -p /data/Temp/slave-6380
    mkdir -p /data/Temp/master-6382
    mkdir -p /data/Temp/slave-6383
    mkdir -p /var/log/supervisor

    supervisord -c /etc/supervisord.conf
    sleep 3

    tail -f /var/log/supervisor/*.log
fi