docker run \
  -d \
  --link elk-on-docker-elastic:elk-on-docker-elastic \
  -e ELASTICSEARCH_URL="http://elk-on-docker-elastic:9200" \
  -p 5601:5601 --network elk-net \
  elk-on-docker-kibana

