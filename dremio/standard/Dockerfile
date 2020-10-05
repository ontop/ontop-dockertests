FROM dremio/dremio-oss:latest

RUN kill 1

RUN /opt/dremio/bin/dremio-admin upgrade

COPY --chown=dremio:dremio ./backup /opt/dremio/data

ENTRYPOINT ["bin/dremio", "start-fg"]
