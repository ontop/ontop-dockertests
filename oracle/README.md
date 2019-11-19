Oracle image truevoly/oracle-12c to test [ontop system](https://github.com/ontop/ontop). It contains the databases used inside the module ontop-docker-tests.

To start a container:
```
docker run --name ontop_oracle_running -d -p 49160:8080 -p 49161:1521 ontop/ontop-oracle
```
License
The Dockerfile and associated scripts are licensed under the Apache License 2.0. 

## Troubleshooting

### Account blocked
TODO: prevent this problem.

Error message:  `ORA-28000: the account is locked`.

To unlock the user, connect to the container
```sh
docker exec -it ontop_oracle_running sqlplus /nolog
```
Then 
```sh
conn sys as sysdba
```
Password: oracle (by default)
```sql
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;
ALTER USER SYSTEM ACCOUNT UNLOCK;
```
To exit
```sh
exit
```
