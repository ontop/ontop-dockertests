FROM ibmcom/db2

RUN mkdir /var/custom
RUN mkdir -p /tmp/sql_scripts/

COPY sql/*.sql /tmp/sql_scripts/
COPY load-scripts-db2.sh /var/custom/

RUN chmod a+x /var/custom/load-scripts-db2.sh
