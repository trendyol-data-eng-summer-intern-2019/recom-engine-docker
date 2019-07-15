FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN mkdir /app
COPY target/recom-engine-0.0.1-SNAPSHOT.jar /app
COPY target/application.yml /app
WORKDIR /app
ENTRYPOINT ["java","-jar","./recom-engine-0.0.1-SNAPSHOT.jar","com.trendyol.recomengine.RecomEngineApplication"]
