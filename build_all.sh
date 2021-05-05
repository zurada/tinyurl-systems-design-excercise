#!/bin/bash

cd tinyurl-url-generator
#mvn clean install
docker build -t zurada/tinyurl-url-generator .

cd ..

cd tinyurl-api
#mvn clean install
docker build -t zurada/tinyurl-api .

cd ..

cd  tinyurl-url-manager
#mvn clean install
docker build -t zurada/tinyurl-url-manager .

cd ..

cd tinyurl-web

docker build -t zurada/tinyurl-web . --build-arg REACT_APP_REDIRECT_URL=http://localhost:8080/

#docker push zurada/tinyurl-url-generator
#docker push zurada/tinyurl-api
#docker push zurada/tinyurl-url-manager
#docker push zurada/tinyurl-web

docker-compose up