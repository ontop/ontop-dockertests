#/bin/bash
docker kill ontop_mssql_running
docker rm ontop_mssql_running
docker rmi ontop/ontop-mssql
