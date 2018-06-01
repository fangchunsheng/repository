1、查看有哪些分组
bin/kafka-consumer-groups.sh --bootstrap-server 10.60.35.84:9092,10.60.35.69:9092,10.60.35.93:9092 --list

2、清空topic数据
./kafka-topics.sh --zookeeper localhost:2181 --alter --topic GB --config retention.ms=1000 
./kafka-console-consumer.sh --zookeeper localhost:2181 --topic GB --from-beginning
./kafka-topics.sh --zookeeper zookeeper1:2181 --alter --topic GB --config retention.ms=604800000
./kafka-console-consumer.sh --zookeeper localhost:2181 --topic GB --from-beginning
