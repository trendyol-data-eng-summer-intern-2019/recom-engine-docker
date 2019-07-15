#!/bin/sh

if [ -z "${FLUME_OPTS}" ]; then
    export FLUME_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XX:MaxRAMFraction=1 -Dcom.sun.management.jmxremote"
fi
export JAVA_OPTS="${FLUME_OPTS} -XshowSettings:vm -Dorg.apache.flume.log.rawdata=true -Dorg.apache.flume.log.printconfig=true "
FLUME_CLASSPATH=""
