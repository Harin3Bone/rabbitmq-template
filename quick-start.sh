#!/bin/bash

echo "Creating RabbitMQ environment..."

cp default.env .env

echo "Starting RabbitMQ server..."

docker-compose up -d

echo "RabbitMQ server running http://localhost:5672"

for i in 1 2 3
do 
    echo "."
    sleep 1
done

rm .env

echo "RabbitMQ management running http://localhost:15672"
sleep 1 
echo "username: root"
echo "password: password"
sleep 1

