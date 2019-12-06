Oracle image 18c XE to test [ontop system](https://github.com/ontop/ontop). It contains the databases used inside the module ontop-docker-tests.

To start a container:
```
docker run --name ontop_oracle_running -d -p 49160:8080 -p 49161:1521 -e LICENSE=accept ontop/ontop-oracle
```
## License
By setting the env variable `LICENSE` to `"accept"`, you are accepting the [Oracle Database Express Edition license](https://docs.oracle.com/en/database/oracle/oracle-database/18/xelic/licensing-information.html).

The Dockerfile and associated scripts are licensed under the Apache License 2.0. 

## Troubleshooting

### Account blocked
May happen if wrong passwords are tried too many times.

Error message:  `ORA-28000: the account is locked`.

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
ALTER USER SYSTEM ACCOUNT UNLOCK;
```

Bonus:
```sql
ALTER PROFILE DEFAULT LIMIT FAILED_LOGIN_ATTEMPTS 1000;
ALTER PROFILE DEFAULT LIMIT PASSWORD_LOCK_TIME 0.001;
```
To exit
```sh
exit
```
