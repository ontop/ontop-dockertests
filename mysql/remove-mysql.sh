#/bin/bash
docker kill ontop_mysql_running
docker rm ontop_mysql_running
docker rmi ontop/ontop-mysql
