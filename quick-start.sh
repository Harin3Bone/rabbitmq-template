#!/bin/bash

echo "Creating RabbitMQ environment"

cp default.env .env

echo "Starting RabbitMQ server"

docker-compose up -d

echo "RabbitMQ server running http://localhost:5672"
echo "RabbitMQ management running http://localhost:15672"