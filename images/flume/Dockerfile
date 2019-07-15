FROM openjdk:8-jre

RUN mkdir -p /opt \
  && curl --fail --silent --location --retry 3 \
  https://www-eu.apache.org/dist/flume/1.9.0/apache-flume-1.9.0-bin.tar.gz \
  | gunzip \
  | tar -x -C /opt \
  && mv /opt/apache-flume-1.9.0-bin /opt/flume \
  && mkdir -p /logs

EXPOSE 41414
EXPOSE 1234

WORKDIR /opt

COPY flume-env.sh /opt/flume/conf/flume-env.sh

CMD [ "/bin/bash", "-c", "/opt/flume/bin/flume-ng agent -n a1 -Dflume.root.logger=INFO,console --conf /opt/flume/conf --conf-file /opt/flume/conf/flume.conf" ]
