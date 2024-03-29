# Build the Dremio image 
`build-dremio.sh`
The content of ./backup (at the time when the image is built) is copied to the image
When starting a container created from this image, Dremio will restore from this backup.

# Create and start a "read-only" container
`run-dremio.sh`

# Edit the Dremio configurarion (data sources, reflections, etc.) with the Dremio GUI

. Create and start a container:
`runMount-dremio.sh`
The content of ./backup will be mounted to /opt/dremio/data in the container, allowing to save changes made to the Dremio configuration.
Alternatively, restart an existing container where this folder was mounted:
`docker start <CONTAINER_ID>`

. Use the web GUI to edit the configuration:
The address is: http://localhost:9047/

. Logout from Dremio (using the web GUI).

. Stop the running dremio_ontop container:
`docker stop <CONTAINER_ID>`

. as sudoer, execute:
`chmod -R a+rwx ./backup/*`

. Re-build the image with the updated backup files:
`./build-dremio.sh`
