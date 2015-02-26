#!/bin/sh

# set elasticsearch location
sed -i "s/^elasticsearch_url: .*/elasticsearch_url: \"http:\/\/$ELASTICSEARCH\"/g" /opt/kibana-$KIBANA_VERSION-linux-x64/config/kibana.yml

exec /opt/kibana-$KIBANA_VERSION-linux-x64/bin/kibana > /data/kibana.log 
