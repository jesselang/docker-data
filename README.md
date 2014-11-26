## Minimal data-only container image for Docker

jesselang/data is a minimal docker image suitable for use as a data-only container. You must specify the volumes you want as part of the container.

Create a data-only container:
`docker run -d -v /var/lib/mysql --name mysql-data jesselang/data`

Use the container:
`docker run --volumes-from mysql-data mysql`

Consult the [Data Volume Container](https://docs.docker.com/userguide/dockervolumes/#creating-and-mounting-a-data-volume-container) section of the [Docker User Guide](https://docs.docker.com/userguide/) for more background.
