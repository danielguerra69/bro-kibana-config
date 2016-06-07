FROM taskrabbit/elasticsearch-dump
MAINTAINER danielguerra
ADD kibana.json /kibana.json
ADD start.sh /start.sh
ENTRYPOINT ["start.sh"]
