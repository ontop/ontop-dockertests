
To run empty Dremio:
```
    docker run -p 9047:9047 -p 31010:31010 -p 45678:45678 dremio/dremio-oss
```

## Dremio image

To run the docker-compose file copy the .env.example file into the dremio folder
```
    cp .env.example ./dremio/.env
```

Run the command to download/build the images:
```
    docker-compose pull

    docker-compose build
```

Start the containers:
```
    docker-compose up
```

Execute the shell file to add the sources to dremio:
```
    docker exec -it ontop_dremio_running ./source.sh
```

## Dremio User data:
First Name: admin
Last Name: admin
Username: admin
Email: admin@admin.it
Password: admin678