FROM taskrabbit/elasticsearch-dump
MAINTAINER danielguerra
ADD kibana.json /kibana.json
ENTRYPOINT ["/usr/lib/node_modules/elasticdump/bin/elasticdump","--input=/kibana.json","--output=http://elasticsearch:9200/.kibana"]
