# docker-visits-compose

Dockerized Node Application that counts numbers of visits and saves it to dockerized Redis database.

- `index.js` contains node application
- `Dockerfile` contains structure of image we want to build
- `docker-compose.yml` contains all the commands we would run with docker-cli to connect multiple containers

## Build Container from Image(Dockerfile)

`docker build -t <dockerUsername>/<nameofapp>:latest <currentDirectory>` <br>
<i>Example: docker build -t lucasnpereira/visits:latest . </i>

## Run Container

`docker run <dockerUsername>/<nameofapp>:latest` <br>
<i>Example: docker run lucasnpereira/visits:latest</i>

## Docker Compose

<i>Reminder : </i> `docker-compose` is used to run multiple docker containers at the same time and connect them together.

Inside `docker-compose.yml`
Here are the containers I want to create:

- <b>redis-server</b>
  - make it using de 'redis' image
- <b>node-app</b>
  - make it using the `Dockerfile` in the current directory
  - map port 8081

<i>Example code:</i>

```
# Specifies the version of docker-compose we want to use
version: "3"

# Write what we want our docker-compose to do
services:
  # First container
  redis-server:
    # Image for this container
    image: "redis"
  node-app:
    # Look for a Dockerfile in current directory to build an image
    build: .
    # Map port in local machine to port inside container
    ports:
      - "8081:8081"

```

## Containers Usage with Docker Compose Commands

To run our containers
`docker-compose up`
<small> It has the same usage as <i> docker run myImage </i> </small>

To start and rebuild our containers
`docker-compose up --build`
<small> It has the same usage as doing <i> docker build . </i> + <i> docker run myImage </i> </small>

To run containers in the background
`docker-compose up -d`

To stop containers
`docker-compose down`
