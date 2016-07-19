#!/bin/bash

WP3_CID=$(docker create --link $SQL_CID:mysql -p 80 -v /run/lock/apache2/ -v /run/apache2/ -v /tmp/ lindison/wordpress)
docker start $WP3_CID

WP4_CID=$(docker create --link $SQL_CID:mysql -p 80 -v /run/lock/apache2/ -v /run/apache2/ -v /tmp/ lindison/wordpress)
docker start $WP4_CID

HAPROXY_CID=$(docker create --link $WP_CID:$WP_CID --link $WP2_CID:$WP2_CID --link $WP3_CID:$WP3_CID --link $WP4_CID:$WP4_CID -p 80 tutum/haproxy)
docker start $HAPROXY_CID 
