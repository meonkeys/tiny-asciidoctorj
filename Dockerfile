FROM ubuntu:24.04

RUN apt-get update
RUN apt-get --assume-yes --no-install-recommends install openjdk-17-jdk unzip

WORKDIR /tinytestdoc

COPY internal-build.sh .
