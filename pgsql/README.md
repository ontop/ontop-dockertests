Pgsql image from postgres official to test [ontop system](https://github.com/ontop/ontop). It contains the databases used inside the module ontop-docker-tests.

To start a container:
```
docker run --name ontop_postgres_running -p 7777:5432 -e POSTGRES_PASSWORD=postgres2 -d ontop/ontop-pgsql
```
License
The Dockerfile and associated scripts are licensed under the Apache License 2.0. 
