FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.2

ADD elasticsearch.yml /usr/share/elasticsearch/config/

USER root

RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/data

USER elasticsearch

EXPOSE 9200 9300
