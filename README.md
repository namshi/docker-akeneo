# Akeneo

This project is a docker container for [Akeneo PIM](http://www.akeneo.com/what-is-a-pim/).

## Using the container

### Pulling the image from docker hub

  ```
  $ docker pull namshi/akeneo
  ```

### Linking the image in a Dockerfile

  ```
  FROM: namshi/akeneo
  ...
  ...
  ```

### Building the image

The container accepts the following environment variables
  - DATABASE_HOST
  - DATABASE_PORT
  - DATABASE_NAME
  - DATABASE_USER
  - DATABASE_PASSWORD

  ```
  $ docker build -t='namshi/akeneo' .
  ```

### Launching the container

  ```
  $ docker run -d
  -e DATABASE_HOST=db
  -e DATABASE_PORT=3306
  -e DATABASE_NAME=akeneo
  -e DATABASE_USER=root
  -e DATABASE_PASSWORD=root
  -p 80:80
  namshi/akeneo
  ```
