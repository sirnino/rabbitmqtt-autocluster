# RabbitMQTT Autocluster
A MQTT Broker, based on RabbitMQ, able to be clusterized simply scaling services replicas (only docker swarm mode).

Wrapper of the [gsantomaggio/rabbitmq-autocluster](https://hub.docker.com/r/gsantomaggio/rabbitmq-autocluster/) image.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Your environment is supposed to be equipped with:

* docker-ce>=18.09.x; [Here](https://docs.docker.com/install/) you can find the instructions for installing Docker CE.
* docker-compose>=1.21.x; [Here](https://docs.docker.com/compose/install/) you can find the instructions for installing docker-compose.

Moreover, your docker daemon must be in SWARM mode. [Here](https://docs.docker.com/engine/swarm/swarm-tutorial/) you can find the instructions for initializing a Docker SWARM.

If everything is ok with your environment you should have the following outputs

```
user@hostname1:~$ docker --version
Docker version 18.09.0, build 4d60db4
```

```
user@hostname1:~$ docker-compose --version
docker-compose version 1.21.2, build a133471
```

### Installing

The software is equipped with a [startup script](startup.sh)
To start the software you have only to type:

```
./startup.sh
```
To check if the rabbitmqtt-autocluster is up and running go to [127.0.0.1:15672](127.0.0.1:15672).
You can login with the user guest/guest.



## Deployment

For production environment be sure to disable the guest/guest user and create specific users. 


## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/sirnino/rabbitmqtt-autocluster/tags). 

## Authors

* **Antonino Sirchia** - *Initial work* - [sirnino](https://github.com/sirnino)

See also the list of [contributors](https://github.com/sirnino/rabbitmqtt-autocluster/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
