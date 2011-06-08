#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`

"$bin"/stop_hadoop_processes.sh
sudo update-alternatives --set hadoop-0.20-conf /etc/hadoop-0.20/conf.empty
ruby -i -pe '$_.sub!("hdfs-protocol-host=hdfs://localhost:8020", "hdfs-protocol-host=file:///")' $ASAKUSA_HOME/bulkloader/conf/bulkloader-conf-hc.properties

