#!/bin/bash

mvn clean install

cd ..

cd tinyurl-api
mvn clean install

cd ..

cd  tinyurl-url-manager
mvn clean install

cd ..