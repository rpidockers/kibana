#!/bin/bash

# set elasticsearch location
sed -i "s/elasticsearch: \"http:\/\/\"+window.location.hostname+\":9200/elasticsearch: \"http:\/\/$ELASTICSEARCH/g" /usr/share/nginx/html/config.js

exec nginx -g 'daemon off;'
