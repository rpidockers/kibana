#
# jpodeszwik/kibana Dockerfile
#
 
FROM resin/rpi-raspbian:jessie

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y wget ca-certificates

# Install kibana
ENV KIBANA_VERSION 4.1.2
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/kibana/kibana/kibana-$KIBANA_VERSION-linux-x64.tar.gz && \
  tar -xvzf kibana-$KIBANA_VERSION-linux-x64.tar.gz && \
  mv /tmp/kibana-$KIBANA_VERSION-linux-x64 /opt && \
  rm kibana-$KIBANA_VERSION-linux-x64.tar.gz && \
  ln -s /opt/kibana-$KIBANA_VERSION-linux-x64 /opt/kibana

RUN \
  wget http://node-arm.herokuapp.com/node_latest_armhf.deb && \
  DEBIAN_FRONTEND=noninteractive dpkg -i node_latest_armhf.deb && \
  ln -sf /usr/local/bin/node /opt/kibana/node/bin/node && \
  ln -sf /usr/local/bin/npm /opt/kibana/node/bin/npm

VOLUME /data

ADD run.sh /bin/run.sh
CMD /bin/run.sh

