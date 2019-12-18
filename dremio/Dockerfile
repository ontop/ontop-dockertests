FROM registry.gitlab.com/ontopic/private-docker-images/ontop_dremio

USER root

RUN apt-get update && apt-get -y install jq

COPY /json/source.sh ./
COPY /json/*.json    ./

USER dremio













