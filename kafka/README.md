关于该Dockerfile的使用说明
===

    可以通过变量修改默认配置默认值如下
    BROKER_ID=${BROKER_ID:-}
    KAFKA_DATA_DIR=${KAFKA_DATA_DIR:-/opt/kafka/data/kafka}
    ZK_CONNECT=${ZK_CONNECT:-localhost:2181}
    JAVA_JVM_MEM=${JAVA_JVM_MEM:-}
    KAFKA_OTHER_OPTS=${KAFKA_OTHER_OPTS:-}
    KAFKA_JMX_PORT=${KAFKA_JMX_PORT:-9999}
    示例
    ZK_CONNECT='192.168.0.1:2181,192.168.0.2:2181,192.169.0.3:2181'
    JAVA_JVM_MEM='1G'
    KAFKA_OTHER_OPTS='--override auto.create.topics.enable=false --override num.io.threads=8'
    KAFKA_JMX_PORT=9999
