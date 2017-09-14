FROM docker.elastic.co/logstash/logstash:5.4.2

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

ADD confs/ /usr/share/logstash/pipeline/

# exec scripts
#USER root
#RUN yum install -y wget

#WORKDIR /home

ADD scripts/ /home/logstash-scripts
