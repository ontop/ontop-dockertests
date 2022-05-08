FROM mysql:5.7.17

RUN apt-get  update && apt-get install -y wget unzip gzip

# copying all SQL files to this folder will automatically put them in the default DB
COPY sql/*.sql.gz /docker-entrypoint-initdb.d/

# unzip all compressed files to ensure they are run
RUN cd /docker-entrypoint-initdb.d && gunzip *.gz

#get fish database dump file , unzip it and load
RUN wget -P /tmp/sql_scripts/ -o log  http://obdavm.inf.unibz.it/dumps/fbapp.sql.zip && \
unzip /tmp/sql_scripts/fbapp.sql.zip -d /docker-entrypoint-initdb.d/ && \
rm -fv /tmp/sql_scripts/fbapp.sql.zip
