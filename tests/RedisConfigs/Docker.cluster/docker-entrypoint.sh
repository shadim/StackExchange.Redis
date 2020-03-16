#!/bin/sh

if [ "$#" -ne 0 ]; then
    exec "$@"
else
    mkdir -p /data/Temp/cluster-7000
    mkdir -p /data/Temp/cluster-7001
    mkdir -p /data/Temp/cluster-7002
    mkdir -p /data/Temp/cluster-7003
    mkdir -p /data/Temp/cluster-7004
    mkdir -p /data/Temp/cluster-7005
    mkdir -p /data/Temp/cluster-7006
    mkdir -p /var/log/supervisor

    supervisord -c /etc/supervisord.conf
    sleep 3

    tail -f /var/log/supervisor/*.log
fi