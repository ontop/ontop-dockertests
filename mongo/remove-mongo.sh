#/bin/bash
docker kill ontop_mongo_running
docker rm -v ontop_mongo_running
docker rmi ontop/ontop-mongo
