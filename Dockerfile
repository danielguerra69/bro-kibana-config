FROM taskrabbit/elasticsearch-dump
MAINTAINER danielguerra
RUN apk add --update curl
ADD kibana.json /kibana.json
ADD start.sh /start.sh
ENTRYPOINT ["/start.sh"]
