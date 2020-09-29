#!/bin/bash
docker exec $1 /opt/dremio-admin backup -u dremio -p dremio123 -d /tmp/dremio/backup

