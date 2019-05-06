# Build simple scaffold rails with docker

- create docker account
  > https://www.docker.com/

- download docker desktop
  > https://hub.docker.com/?overlay=onboarding

- docker docs
  > https://docs.docker.com/

## Usage

### Create app

- build project
  ```bash
  docker-compose run app rails new . --force --no-deps --database=postgresql
  ```

- config you databse
  ```bash
  config/database.yml
  ```

- create database
  ```bash
  docker-compose run app rails db:create
  ```

- run app
  ```bash
  docker-compose up
  ```

- or run app with background
  ```bash
  docker-compose up -d
  ```

- visit browser
  ```bash
  http://localhost:3000/
  ```

- when Gemfile changed
  ```bash
  docker-compose build
  ```

- bundle install
  ```bash
  docker-compose run app bundle install
  ```

- add a gem
  ```bash
  docker-compose run app bundle add <gem-name>
  ```

- install a gem
  ```bash
  docker-compose run app gem install <gem-name>
  ```

### Push app to your dockerhub

- create docker repositories
 > https://cloud.docker.com/repository/list

- create tag
  ```bash
    docker tag simple_docker_rails:latest <your-docker-id>/simple_docker_rails:latest
  ```

- push
  ```bash
  docker push <your-docker-id>/simple_docker_rails:latest
  ```
