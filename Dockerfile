FROM shoothzj/base

WORKDIR /opt

ENV TELEGRAF_HOME /opt/telegraf

ARG TARGETARCH

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.25.1_linux_$TARGETARCH.tar.gz && \
mkdir /opt/telegraf && \
tar -xf telegraf-1.25.1_linux_$TARGETARCH.tar.gz -C /opt/telegraf --strip-components 2 && \
rm -rf telegraf-1.25.1_linux_$TARGETARCH.tar.gz

WORKDIR /opt/telegraf
