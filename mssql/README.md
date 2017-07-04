Mssql image from microsoft/mssql-server-linux to test [ontop system](https://github.com/ontop/ontop). It contains the databases used inside the module ontop-docker-tests.

To start a container:
```
docker run --name ontop_mssql_running -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Mssql1.0' -p 1533:1433 -d ontop/ontop-mssql

```
License
The Dockerfile and associated scripts are licensed under the Apache License 2.0. 