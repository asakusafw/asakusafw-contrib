#!/bin/sh

sudo /root/bin/stop-all.sh
sudo /usr/sbin/alternatives --set hadoop-0.20-conf /etc/hadoop-0.20/conf.stand_alone
ruby -i -pe '$_.sub!("hdfs-protocol-host=hdfs://localhost:8020", "hdfs-protocol-host=file:///")' $ASAKUSA_HOME/bulkloader/conf/bulkloader-conf-hc.properties

