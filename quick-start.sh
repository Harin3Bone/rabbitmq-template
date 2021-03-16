#!/bin/bash

echo "Creating RabbitMQ environment..."

cp default.env .env

for i in 1 2 3
do 
    echo "."
    sleep 1
done

echo "Starting RabbitMQ server..."

docker-compose up -d

for i in 1 2 3 
do
    echo "."
    sleep 1
done

rm .env

echo "RabbitMQ server running http://localhost:5672"
echo "RabbitMQ management running http://localhost:15672"
echo "username: root"
echo "password: password"

sleep 1