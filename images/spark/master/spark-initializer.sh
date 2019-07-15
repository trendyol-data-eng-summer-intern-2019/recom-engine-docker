#!/bin/bash

cron
export > /export.sh

until curl --max-time 2 -f http://127.0.0.1:8080 && $SPARK_HOME/bin/spark-submit \
        --class com.trendyol.recomengine.streaming.Main \
        --deploy-mode cluster \
        --supervise \
        --total-executor-cores 1 \
        --master spark://spark-master:7077 \
        /app/recom-engine-streaming-assembly-0.1.jar
do
    echo "Health-check is failed."
    sleep 5
done &

$SPARK_HOME/bin/spark-class org.apache.spark.deploy.master.Master
