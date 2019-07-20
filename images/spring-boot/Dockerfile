FROM debian:stretch

VOLUME /tmp

# Install Java 8.
RUN apt-get update \
 && apt-get install -y openjdk-8-jre \
 && apt-get install -y curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Download the latest JAR of the Spring Boot application.
RUN mkdir /app \
 && latest_jar_link=$(curl https://api.github.com/repos/trendyol-data-eng-summer-intern-2019/recom-engine-web-service/releases/latest | grep browser_download_url | cut -d '"' -f 4) \
 && curl -Lo /app/recom-engine-web-service.jar $latest_jar_link

WORKDIR /app
ENTRYPOINT ["java","-jar","./recom-engine-web-service.jar","com.trendyol.recomengine.webservice.RecomEngineApplication"]
