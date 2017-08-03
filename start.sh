docker built -t myMysql dockerfile
docker run -d --name myMysql -v /data/mysql:/var/lib/mysql -p 3306:3306 mysql