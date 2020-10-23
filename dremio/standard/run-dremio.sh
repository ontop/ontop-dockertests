#!/bin/bash
docker run \
-p 9047:9047 \
-p 31010:31010 \
-p 45678:45678 \
--net="host" \
dremio_ontop:latest \
& disown
