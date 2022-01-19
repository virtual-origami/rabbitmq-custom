# RabbitMQ for RAINBOW project

- This is a standard [rabbitmq](https://rabbitmq.com) for `ARM64v8` hardware with the Management API accessible via IPv6
- The public image is hosted on Docker Hub

## Usage

```bash
docker pull virtualorigami/rabbitmq:0.9.0

docker run -e RABBITMQ_NODENAME=rabbit@localhost \
	   -e RABBITMQ_USERNAME=admin	\
	   -e RABBITMQ_PASSWORD=secure_password_here \
	   virtualorigami/rabbitmq:0.9.0
```

## Problem
For a standard _out-of-the-box_ RabbitMQ management image the management API used for metric collection is accessible only
through IPv4 address. 

Performing a `curl -XGET -u admin:secure_password_here http://[IPv6_Address_Rabbitmq_node]:15672/api/overview` provides
connection refusal errors

### Resolution

enable the `management.tcp.ip = ::` to make it accessible via IPv6

## Maintainers

- [Shantanoo Desai](https://github.com/shantanoo-desai)
- [Karthik Shenoy Panambur](https://github.com/karshUniBremen)


## FUNDING 

The development of this codebase and repository is driven through the RAINBOW Project. 
RAINBOW Project has received funding from the European Union’s Horizon 2020 programme under grant agreement number 871403
