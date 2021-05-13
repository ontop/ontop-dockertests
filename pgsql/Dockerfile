FROM postgres:9.6.15

RUN apt-get  update && apt-get install -y wget

# copying all SQL files to this folder will automatically put them in the default DB
COPY sql/*.sql.gz /docker-entrypoint-initdb.d/

COPY sql/*.dump /tmp/sql_scripts/

COPY load-scripts-postgres.sh /docker-entrypoint-initdb.d/
