# Recommendation Engine - Docker Files

## Description
This repository contains the docker-compose file for the tools used in our recommender engine. The docker-compose file includes Kafka, Flume, Zookeeper, Spring Boot, MongoDB and Spark. Architecture of the project is visualized in figure below.

![System Overview](./figures/architecture.png)
<p align="center">
	Figure 1: Visualized architecture of the project.
</p>

## Usage
When you run `docker-compose up` command in root directory of this repository, all services of the system run with their own docker images. These images placed in this GitHub repository.

Dockerfiles of the services are also published in this repository. If you wish to change services you can edit their Docekrfiles and run the command `docker-compose -f docker-compose-with-build.yml up` to up the whole system.

## JARs
This project uses different jar files for running the web service, streaming and ml components. These jar files are obtained from our repositories:
* For the web service component:
  * https://github.com/trendyol-data-eng-summer-intern-2019/recom-engine-web-service/releases/latest
* For the streaming component:
  * https://github.com/trendyol-data-eng-summer-intern-2019/recom-engine-streaming/releases/latest
* For the ml component:
  * https://github.com/trendyol-data-eng-summer-intern-2019/recom-engine-ml/releases/latest

## Members
- [Oğuzhan Bölükbaş](https://github.com/oguzhan-bolukbas)
- [Sercan Ersoy](https://github.com/sercanersoy)
- [Yasin Uygun](https://github.com/yasinuygun)
