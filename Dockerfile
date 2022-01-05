FROM ubuntu:bionic

RUN apt-get update && apt-get -y install wget git git-lfs
#RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

COPY docker-entrypoint.d /docker-entrypoint.d
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.d/*.sh
RUN chmod a+x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]