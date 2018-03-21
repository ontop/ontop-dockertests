#/bin/bash
docker kill ontop_hana_running
docker rm -v ontop_hana_running
docker rmi ontop/ontop-hana
