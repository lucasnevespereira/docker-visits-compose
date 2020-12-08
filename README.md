# docker-visits-compose

Dockerized Node Application that counts numbers of visits and saves it to dockerized Redis database

Infos:

- `index.js` contains node application
- `Dockerfile` contains structure of image we want to build

## Build Container from Image(Dockerfile)

`docker build -t <dockerUsername>/<nameofapp>:latest <currentDirectory>` <br>
<i>Example: docker build -t lucasnpereira/visits:latest . </i>

## Run Container

`docker run <dockerUsername>/<nameofapp>:latest` <br>
<i>Example: docker run lucasnpereira/visits:latest</i>
