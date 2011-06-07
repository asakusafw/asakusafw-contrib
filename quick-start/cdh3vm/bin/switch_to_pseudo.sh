#!/bin/sh

sudo update-alternatives --set hadoop-0.20-conf /etc/hadoop-0.20/conf.pseudo
./restart_hadoop_processes.sh
ruby -i -pe '$_.sub!("hdfs-protocol-host=file:///", "hdfs-protocol-host=hdfs://localhost:8020")' $ASAKUSA_HOME/bulkloader/conf/bulkloader-conf-hc.properties

