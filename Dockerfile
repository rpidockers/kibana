#
# jpodeszwik/kibana Dockerfile
#
from nginx:1.7.8

RUN \
    apt-get update && \
    apt-get -y install wget && \
    apt-get -y install ca-certificates

# install kibana
ENV KIBANA_VERSION 3.1.2
RUN \
    cd /tmp && \
    wget https://download.elasticsearch.org/kibana/kibana/kibana-$KIBANA_VERSION.tar.gz && \
    tar -xvzf kibana-$KIBANA_VERSION.tar.gz && \
    mv kibana-$KIBANA_VERSION/* /usr/share/nginx/html/ && \
    rmdir kibana-$KIBANA_VERSION && \
    rm kibana-$KIBANA_VERSION.tar.gz
    
ADD run.sh /bin/

CMD /bin/run.sh
