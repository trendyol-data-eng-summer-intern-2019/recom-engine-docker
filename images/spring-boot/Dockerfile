FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN mkdir /app \
 && latest_jar_link=$(curl https://api.github.com/repos/trendyol-data-eng-summer-intern-2019/recom-engine-web-service/releases/latest | grep browser_download_url | cut -d '"' -f 4) \
 && curl -Lo /app/recom-engine-web-service-0.0.1-SNAPSHOT.jar $latest_jar_link
COPY target/application.yml /app
WORKDIR /app
ENTRYPOINT ["java","-jar","./recom-engine-0.0.1-SNAPSHOT.jar","com.trendyol.recomengine.webservice.RecomEngineApplication"]
