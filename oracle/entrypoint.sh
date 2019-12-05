#!/bin/bash

if [ "${LICENSE}" == "accept" ]; then
   exec $ORACLE_BASE/$RUN_FILE
else
  echo "You must accept the license"
fi
