FROM ruby:2.3.0

# resolve apt-get install failed
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# create project folder
RUN mkdir /simple_docker_rails
WORKDIR /simple_docker_rails

COPY Gemfile /simple_docker_rails/Gemfile
COPY Gemfile.lock /simple_docker_rails/Gemfile.lock

RUN bundle install

COPY . /simple_docker_rails

