#Start from a rabbit instance able to autocluster
FROM gsantomaggio/rabbitmq-autocluster

COPY ./rabbit.conf /usr/lib/rabbitmq/etc/rabbitmq/rabbitmq.config

#Enable the ManagementUI plugin
RUN rabbitmq-plugins enable --offline rabbitmq_management

#Enable the MQTT plugin
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt

#Expose the port for the ManagementUI
EXPOSE 15672

#Expose the port for the AMQP Broker
EXPOSE 5672

#Expose the port for the MQTT Broker
EXPOSE 1883
