#!/bin/bash
until curl -XGET elasticsearch:9200/; do
  >&2 echo "Elasticsearch is unavailable - sleeping"
  sleep 5
done

>&2 echo "Elasticsearch is up - executing command"
/usr/lib/node_modules/elasticdump/bin/elasticdump --input=/kibana.json --output=http://elasticsearch:9200/.kibana
