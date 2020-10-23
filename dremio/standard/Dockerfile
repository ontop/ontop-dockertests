FROM dremio/dremio-oss:latest

RUN kill 1

COPY --chown=dremio:dremio ./backup /opt/dremio/data

RUN /opt/dremio/bin/dremio-admin upgrade

ENTRYPOINT ["bin/dremio", "start-fg"]
