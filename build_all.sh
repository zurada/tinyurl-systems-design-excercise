#!/bin/bash

cd tinyurl-url-generator
mvn clean install
docker build -t url-key-generator .

cd ..

cd tinyurl-api
mvn clean install
docker build -t tiny-url-api .

cd ..

cd  tinyurl-url-manager
mvn clean install
docker build -t url-key-manager .

cd ..

cd tinyurl-web
#npm install
npm run build

sudo docker build -t tiny-web-gen . --build-arg


