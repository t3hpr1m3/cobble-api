FROM elixir:1.2

MAINTAINER Josh Williams <vmizzle@gmail.com>

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

COPY mix.exs /usr/src/app
COPY mix.lock /usr/src/app

RUN yes | mix deps.get

COPY . /usr/src/app

ENV PORT 8080
EXPOSE 8080

RUN mix deps.compile
