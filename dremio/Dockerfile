FROM registry.gitlab.com/ontopic/private-docker-images/ontop_dremio

COPY /json/source.sh ../../temp/
COPY /json/*.json ../../temp/

CMD [ "../../temp/source.sh" ]
