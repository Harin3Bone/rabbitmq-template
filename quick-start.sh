#!/bin/bash

echo "Creating RabbitMQ environment..."

SERVER_PORT=5672
MANAGEMENT_PORT=15672
DEFAULT_USERNAME=root
DEFAULT_PASSWORD=password

echo "Starting RabbitMQ server..."

docker-compose up -d

echo "RabbitMQ server running http://localhost:5672"
echo "RabbitMQ management running http://localhost:15672"