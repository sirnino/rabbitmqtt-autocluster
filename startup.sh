#!/bin/bash

echo "Creating network rabbitmq-network"
docker network create -d overlay --attachable rabbitmq-network

docker stack deploy --compose-file etcd-compose.yml etcd

echo "Building rabbitmqtt-autocluster image.."
docker build -t rabbitmqtt-autocluster ./rabbitmqtt


docker stack deploy --compose-file rabbit-compose.yml rabbitmq

