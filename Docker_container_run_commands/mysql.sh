docker run -d  \
           --restart=unless-stopped \
           --name mariadb \
           -e ALLOW_EMPTY_PASSWORD=yes \
           -e MARIADB_ROOT_PASSWORD=root \
           -p 3306:3306 \
           --mount 'type=volume,src=mariadb,volume-driver=local,dst=/bitnami,volume-opt=type=nfs,volume-opt=device=:/mnt/workdisk/docker/mysqlconfig,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
           bitnami/mariadb:latest