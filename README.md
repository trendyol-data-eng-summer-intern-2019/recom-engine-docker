# Recommendation Engine - Docker Files

## Description
This repository contains the docker-compose file for the tools used in our recommender engine. The docker-compose file includes Kafka, Flume, Zookeeper, Spring Boot, MongoDB and Spark.

![System Overview](./media/recommendation-engine.png)

## Usage
When you run `docker-compose up` command in root directory of this repository, all services of the system run with their own docker images. These images placed in this GitHub repository.

Dockerfiles of the services are also published in this repository. If you wish to change services you can edit their Docekrfiles and run the command `docker-compose -f docker-compose-with-build.yml up` to up the whole system.

## Members
- [Oğuzhan Bölükbaş](https://github.com/oguzhan-bolukbas)
- [Sercan Ersoy](https://github.com/sercanersoy)
- [Yasin Uygun](https://github.com/yasinuygun)
