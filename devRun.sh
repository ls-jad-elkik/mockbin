#!/bin/bash -ex

# docker build -t mockbin .
# docker run --rm --name redis -d -p 6379:6379 redis
# docker run --rm --name mockbin -p 8080:8080 --link redis:redis mockbin

exec docker-compose up --build
