## Build from Dockerfile
1) You can build the image from the Dockerfile running the command:
```
docker build -t ontop-oracle .
```
2) and run the container:
```
docker run --name ontop_oracle_running -d -p 49160:8080 -p 49161:1521 -e LICENSE=accept -e ORACLE_PASSWORD=oracle ontop_oracle
```
## Build your own Oracle-image from the official Oracle repository

1) Follow the instructions on: https://github.com/oracle/docker-images/blob/master/OracleDatabase/SingleInstance/README.md

2) Oracle XE 18.4 can be found at:
        https://www.oracle.com/database/technologies/xe-downloads.html
    - Download the installation binaries and put them into the right folder (/OracleDatabase/SingleInstance/dockerfiles/18.4.0/)

3) To run your Oracle Database 18c Express Edition Docker image use the docker run command
```
docker run --name ontop_oracle_running -d -p 49160:8080 -p 49161:1521 -e LICENSE=accept -e ORACLE_PASSWORD=oracle oracle/database:18.4.0-xe
```

## License
- The Dockerfile and associated scripts are licensed under the Apache License 2.0. 

- The Oracle XE license can be found at:  https://www.oracle.com/downloads/licenses/db18c-express-license.html


## Troubleshooting

### Account blocked
May happen if wrong passwords are tried too many times.

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
