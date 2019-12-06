Db2 image from ibmcom/db2 to test [ontop system](https://github.com/ontop/ontop). It contains the databases used inside the module ontop-docker-tests.

To start a container:
```
docker run --name ontop_db2_running -d --privileged=true -p 50000:50000 -e DB2INST1_PASSWORD=obda-pwd -e LICENSE=accept ontop/ontop-db2
```
## License
By setting the env variable `LICENSE` to `"accept"`, you are accepting the [DB2 Developer-C license](https://www-03.ibm.com/software/sla/sladb.nsf/displaylis/1E8460F5B5EBE0EB85258427002C656B?OpenDocument).

The Dockerfile and associated scripts published on this repository are licensed under the Apache License 2.0.