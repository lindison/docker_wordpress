#!/bin/bash

docker run -d --name wordpress -p 80:80 -p 443:443 \
  --net wordpress-tier \
  --volume wordpress_data:/bitnami/wordpress \
  --volume apache_data:/bitnami/apache \
  bitnami/wordpress:latest
