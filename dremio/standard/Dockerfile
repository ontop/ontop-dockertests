FROM dremio/dremio-oss:4.8

RUN kill 1

COPY --chown=dremio:dremio ./backup /opt/dremio/data

RUN /opt/dremio/bin/dremio-admin upgrade

ENTRYPOINT ["bin/dremio", "start-fg"]
