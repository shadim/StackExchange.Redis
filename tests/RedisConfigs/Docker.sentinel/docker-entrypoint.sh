#!/bin/sh

if [ "$#" -ne 0 ]; then
    exec "$@"
else
    mkdir -p /data/Temp/redis-7010
    mkdir -p /data/Temp/redis-7011
    mkdir -p /data/Temp/sentinel-26379
    mkdir -p /data/Temp/sentinel-26380
    mkdir -p /data/Temp/sentinel-26381
    mkdir -p /var/log/supervisor

    supervisord -c /etc/supervisord.conf
    sleep 3

    tail -f /var/log/supervisor/*.log
fi