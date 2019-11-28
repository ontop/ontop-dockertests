
FROM registry.gitlab.com/ontopic/private-docker-images/oracle-xe:18.4


# copying all SQL files to this folder will automatically put them in the default DB
COPY sql/*.sql /docker-entrypoint-initdb.d/setup/
