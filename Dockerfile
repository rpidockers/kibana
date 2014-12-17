#
# jpodeszwik/kibana Dockerfile
#
 
FROM dockerfile/java:oracle-java8

# Install kibana
ENV KIBANA_VERSION 4.0.0-beta3
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/kibana/kibana/kibana-$KIBANA_VERSION.tar.gz && \
  tar -xvzf kibana-$KIBANA_VERSION.tar.gz && \
  mv /tmp/kibana-$KIBANA_VERSION /opt && \
  rm kibana-$KIBANA_VERSION.tar.gz

# Change port
RUN \
  sed -i 's/port: 5601/port: 80/g' /opt/kibana-$KIBANA_VERSION/config/kibana.yml

ADD run.sh /bin/run.sh
CMD /bin/run.sh

