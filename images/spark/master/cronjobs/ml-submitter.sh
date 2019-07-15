#!/bin/bash

source /export.sh

/usr/spark-2.4.1/bin/spark-submit \
    --class com.trendyol.recomengine.ml.Main \
    --deploy-mode cluster \
    --total-executor-cores 1 \
    --master spark://spark-master:7077 \
    /app/recom-engine-ml-1.0-SNAPSHOT.jar /logs/flume /models/model
