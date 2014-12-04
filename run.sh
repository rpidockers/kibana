#!/bin/sh

# set elasticsearch location
sed -i "s/elasticsearch: \"http:\/\/localhost:9200\"/elasticsearch: \"http:\/\/$ELASTICSEARCH\"/g" /opt/kibana-$KIBANA_VERSION/config/kibana.yml

exec /opt/kibana-$KIBANA_VERSION/bin/kibana 
