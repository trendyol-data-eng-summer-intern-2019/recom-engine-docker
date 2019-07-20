#!/bin/bash

streaming_link=$(curl https://api.github.com/repos/trendyol-data-eng-summer-intern-2019/recom-engine-streaming/releases/latest | grep browser_download_url | cut -d '"' -f 4)
curl -Lo /app/recom-engine-streaming.jar $streaming_link

ml_link=$(curl https://api.github.com/repos/trendyol-data-eng-summer-intern-2019/recom-engine-ml/releases/latest | grep browser_download_url | cut -d '"' -f 4)
curl -Lo /app/recom-engine-ml.jar $ml_link

cron
export > /export.sh

until curl --max-time 2 -f http://localhost:8080 && $SPARK_HOME/bin/spark-submit \
        --class com.trendyol.recomengine.streaming.Main \
        --deploy-mode cluster \
        --supervise \
        --total-executor-cores 1 \
        --master spark://spark-master:7077 \
        /app/recom-engine-streaming.jar \
        mongo1:27017 recom-engine recommendations \
        kafka1:19092 reviews \
        spark-master:7077 /models/model
do
    echo "Health-check is failed."
    sleep 5
done &

$SPARK_HOME/bin/spark-class org.apache.spark.deploy.master.Master
