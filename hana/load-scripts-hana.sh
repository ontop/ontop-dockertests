#!/bin/bash
#wait for hana to come up
sleep 30s

for f in /tmp/sql_scripts/*.sql;
do
    echo Running $f
    hdbsql -i 90 -d SYSTEMDB -u SYSTEM -p hanaTes1 -I $f
done


