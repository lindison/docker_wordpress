SQL_CID=$(docker create -e MYSQL_ROOT_PASSWORD=Passw0rd mysql:5)
docker start $SQL_CID

WP_CID=$(docker create --link $SQL_CID:mysql -p 80 -v /run/lock/apache2/ -v /run/apache2/ -v /tmp/ s5atrain/wordpress-cli:latest)
docker start $WP_CID
