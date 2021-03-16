#!/bin/bash

echo "Creating RabbitMQ environment..."

SERVER_PORT=5672
MANAGEMENT_PORT=15672
DEFAULT_USERNAME="root"
DEFAULT_PASSWORD="password"

echo "Starting RabbitMQ server..."

docker-compose up -d

echo "RabbitMQ server running http://localhost:5672"

for i in 1 2 3
do 
    echo "."
    sleep 1
done

echo "RabbitMQ management running http://localhost:15672"
sleep 1 
echo "username: root"
echo "password: password"
sleep 1

