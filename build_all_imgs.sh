#!/bin/bash

cd tinyurl-url-generator
docker build -t zurada/tinyurl-url-generator .

cd ..

cd tinyurl-api
docker build -t zurada/tinyurl-api .

cd ..

cd  tinyurl-url-manager
docker build -t zurada/tinyurl-url-manager .

cd ..

cd tinyurl-web

docker build -t zurada/tinyurl-web . --build-arg REACT_APP_REDIRECT_URL=http://localhost:8080/