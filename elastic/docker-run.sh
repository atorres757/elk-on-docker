docker run \
	--network elk-net \
	-p 9200:9200 \
	-v "$PWD/data":/usr/share/elasticsearch/data \
	--memory="2g" --memory-swap="2g" --memory-swappiness=0 \
	--cap-add=IPC_LOCK --ulimit nofile=65536:65536 --ulimit memlock=-1:-1 \
	-e ES_JAVA_OPTS="-Xms1g -Xmx1g" \
	--name elk-on-docker-elastic \
	elk-on-docker-elastic
