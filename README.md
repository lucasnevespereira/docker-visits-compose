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
