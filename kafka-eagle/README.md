关于该镜像的使用说明
===

    可以通过变量修改默认配置默认值如下
	#Zk集群名
	ZK_CLUSTER_NAME=${ZK_CLUSTER_NAME:-cluster1}
	#Zk集群地址
	ZK_CLUSTER_LIST=${ZK_CLUSTER_LIST:-ZKSERVER}
	
	示例：
	ZK_CLUSTER_NAME='cluster1,cluster2'
	ZK_CLUSTER_LIST='192.168.1.2:2181,192.168.1.3:2181,192.168.1.4:2181 192.168.1.5:2181,192.168.1.6:2181,192.168.1.7:2181'
	提示：
	cluster1对应的zookeeper地址192.168.1.2:2181,192.168.1.3:2181,192.168.1.4:2181
	cluster2对应的zookeeper地址192.168.1.5:2181,192.168.1.6:2181,192.168.1.7:2181
	集群名称和zookeeper地址必须一一对应
	默认使用sqlite数据库
	持久化目录/opt/kafka-eagle/db
