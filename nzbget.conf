docker run -d \
           --restart=unless-stopped \
           --name nzbget \
           -p 6789:6789 \
           -p 6791:6791 \
           -e APP=nzbget \
           -e PUID=1000 \
           -e PGID=1000 \
           -e UMASK=022 \
           -e VERSION=stable \
           -e BACKUP=yes \
           -v /etc/localtime:/etc/localtime:ro \
           --mount 'type=volume,src=media,volume-driver=local,dst=/mnt/media,volume-opt=type=nfs,volume-opt=device=:/mnt/volume1/media/server,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
           --mount 'type=volume,src=nzbget,volume-driver=local,dst=/config,volume-opt=type=nfs,volume-opt=device=:/mnt/workdisk/docker/nzbget,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
           hotio/suitarr