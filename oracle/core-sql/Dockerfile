FROM oraclelinux:9

# copying all SQL files to this folder will automatically put them in the default DB
COPY *.sql /docker-entrypoint-initdb.d/

#EXPOSE 8080
#EXPOSE 1521
COPY *.sql .
COPY run-oracle.sh .
RUN chmod +x run-oracle.sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]