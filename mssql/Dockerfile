FROM microsoft/mssql-server-linux:2017-latest

# Set this so that it skips prompting you during the mssql-tools package install
ENV ACCEPT_EULA=Y \
    LANG='C.UTF-8' \
    LC_ALL='C.UTF-8' \
    LANGUAGE='C.UTF-8'
ENV SA_PASSWORD='Mssql1.0'
ENV DEBIAN_FRONTEND noninteractive

# Install
RUN  locale-gen en_US.UTF-8 && \
      update-locale && \
      apt-get  update  && \
        apt-get install -y apt-utils

RUN  apt-get install -y mssql-tools

RUN mkdir -p /tmp/sql_scripts/

COPY sql/*.sql /tmp/sql_scripts/

COPY load-scripts-mssql.sh /var/opt/mssql/data/

EXPOSE 1433

RUN /opt/mssql/bin/sqlservr & /var/opt/mssql/data/load-scripts-mssql.sh

