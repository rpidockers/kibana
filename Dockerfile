#
# jpodeszwik/kibana Dockerfile
#
 
FROM debian:jessie

RUN apt-get update && apt-get install -y wget

# Install kibana
ENV KIBANA_VERSION 4.1.1
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/kibana/kibana/kibana-$KIBANA_VERSION-linux-x64.tar.gz && \
  tar -xvzf kibana-$KIBANA_VERSION-linux-x64.tar.gz && \
  mv /tmp/kibana-$KIBANA_VERSION-linux-x64 /opt && \
  rm kibana-$KIBANA_VERSION-linux-x64.tar.gz

VOLUME /data

ADD run.sh /bin/run.sh
CMD /bin/run.sh

