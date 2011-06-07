#!/bin/sh

for service in /etc/init.d/hadoop-0.20-*
do
 sudo $service start
done

