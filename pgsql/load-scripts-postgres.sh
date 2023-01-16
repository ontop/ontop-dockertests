#!/bin/bash
set -e

for f in /tmp/sql_scripts/*.dump;
 do
 echo Running $f;
 pg_restore --schema=public --no-owner -C -d postgres  $f;
 echo "DATABASE $f CREATED!"
 done
