Mysql image from mysql official to test [ontop system](https://github.com/ontop/ontop). It contains the databases used inside the module ontop-docker-tests.

To start a container:
```
docker run --name ontop_mysql_running -p 3694:3306 -e MYSQL_ROOT_PASSWORD=mysql -d ontop/ontop-mysql

```
License
The Dockerfile and associated scripts are licensed under the Apache License 2.0. 


## Building

For building the regular Docker image, please comment out the lines downloading the fish bank dataset in the Dockerfile.
