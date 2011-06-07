# Asakusaの環境変数の設定
echo "
==================================================================================================
configure asakusa environment valiables at .asakusarc
==================================================================================================
"
sleep 1

echo "
JAVA_HOME=/usr/lib/jvm/java-6-sun
export JAVA_HOME
HADOOP_HOME=/usr/lib/hadoop
export HADOOP_HOME
ASAKUSA_HOME=$HOME/asakusa
export ASAKUSA_HOME

PATH=$JAVA_HOME/bin:$PATH:$HADOOP_HOME/bin
export PATH" > ~/.asakusarc

echo "
~/.asakusarc
" >> ~/.bashrc


cat ~/.asakusarc

