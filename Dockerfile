FROM ubuntu:16.04

MAINTAINER Amrish Bharatiya <bamrish@gmail.com>

RUN apt-get update && apt-get install -y openjdk-8-jdk curl unzip zip

RUN curl -L#O https://github.com/grails/grails-core/releases/download/v3.2.11/grails-3.2.11.zip

RUN unzip grails-3.2.11.zip

RUN mv grails-3.2.11 /usr/lib

RUN ln -s /usr/lib/grails-3.2.11/bin/grails /usr/bin/grails

RUN grails -version

RUN mkdir app

COPY . app

WORKDIR app

RUN grails compile

EXPOSE 8080

ENTRYPOINT ["grails", "run-app"]