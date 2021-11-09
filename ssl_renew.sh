#!/bin/bash

/usr/local/bin/docker-compose -f /home/ubuntu/node_project/docker-compose.yml run certbot renew --dry-run \
&& /usr/local/bin/docker-compose -f /home/ubuntu/node_project/docker-compose.yml kill -s SIGHUP webserver
