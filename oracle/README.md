Oracle image from wnameless/oracle-xe-11g to test [ontop system](https://github.com/ontop/ontop). It contains the databases used inside the module ontop-docker-tests.

To start a container:
```
docker run --name ontop_oracle_running -d -p 49160:22 -p 49161:1521 ontop_oracle
```
License
The Dockerfile and associated scripts are licensed under the Apache License 2.0. 