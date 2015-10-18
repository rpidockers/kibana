#!/bin/sh

# set elasticsearch location
sed -i "s/^elasticsearch_url: .*/elasticsearch_url: \"http:\/\/$ELASTICSEARCH\"/g" /opt/kibana/config/kibana.yml

exec /opt/kibana/bin/kibana > /data/kibana.log 
