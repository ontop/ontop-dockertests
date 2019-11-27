
To run empty Dremio:
```
    docker run -p 9047:9047 -p 31010:31010 -p 45678:45678 dremio/dremio-oss
```

## Dremio image

To run the docker-compose file copy the .env.example file into the dremio folder
```
    cp .env.example ./dremio/.env
```

This Dremio image contains views of the DB 'university' from Postgresql, Microsoft Server SQL e MySQL

## Dremio User data:
First Name: admin
Last Name: admin
Username: admin
Email: admin@admin.it
Password: admin678