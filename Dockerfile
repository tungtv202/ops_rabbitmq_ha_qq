FROM rabbitmq:3-management

COPY rabbitmq-qq.conf /etc/rabbitmq/rabbitmq.conf
COPY rabbitmq-qq-definitions.json /etc/rabbitmq/rabbitmq-definitions.json

#ENV RABBITMQ_CONF_ENV_FILE /etc/rabbitmq/rabbitmq-env.conf
ENV RABBITMQ_ERLANG_COOKIE cookieSecret
#RUN apt-get update && apt-get install -y iputils-ping && apt-get install -y telnet && apt-get install -y nano