#!/bin/bash

docker run -d -P -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml  prom/prometheus
