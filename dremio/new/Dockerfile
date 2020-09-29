FROM dremio/dremio-oss:latest

COPY backup/* /tmp/dremio_backup/

RUN /opt/dremio-admin restore -d /tmp/dremio/backup/ -r
