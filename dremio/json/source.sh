#!/bin/bash

content=$(curl -X POST \
  http://localhost:9047/apiv2/login \
  -H 'Content-Type: application/json' \
  -d '{ "userName": "admin", "password": "admin678" }')

tokenstring=$(jq -r '"_dremio" + .token' <<<"$content")

curl -X POST \
  http://localhost:9047/api/v3/catalog \
  -H "Authorization: ${tokenstring}" \
  -H "Content-Type: application/json" \
  -d "@pgsource.json"

curl -X POST \
  http://localhost:9047/api/v3/catalog \
  -H "Authorization: ${tokenstring}" \
  -H "Content-Type: application/json" \
  -d "@mssqlsource.json"

curl -X POST \
  http://localhost:9047/api/v3/catalog \
  -H "Authorization: ${tokenstring}" \
  -H "Content-Type: application/json" \
  -d "@oraclesource.json"

curl -X POST \
  http://localhost:9047/api/v3/catalog \
  -H "Authorization: ${tokenstring}" \
  -H "Content-Type: application/json" \
  -d "@mysqlsource.json"
    
    
 



