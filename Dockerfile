FROM arm64v8/rabbitmq:3.9-management

COPY ipv6_mgmt.conf /etc/rabbitmq/conf.d
