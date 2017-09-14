docker run \
  --network elk-net \
  --link elk-on-docker-elastic:elasticsearch \
  --memory="2g" --memory-swap="2g" --memory-swappiness=0 --ulimit memlock=-1:-1 \
  elk-on-docker-logstash
