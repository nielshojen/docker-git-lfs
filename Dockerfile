FROM ubuntu:bionic

RUN apt-get update && apt-get -y install wget git
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
