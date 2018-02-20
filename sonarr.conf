docker run -d \
		   --restart=unless-stopped \
           --name sonarr \
           --mount 'type=volume,src=media,volume-driver=local,dst=/mnt/media,volume-opt=type=nfs,volume-opt=device=:/mnt/volume1/media/server,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
           --mount 'type=volume,src=sonarr,volume-driver=local,dst=/config,volume-opt=type=nfs,volume-opt=device=:/mnt/workdisk/docker/sonarr,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
           -p 8989:8989 \
           -p 9898:9898 \
           -e APP=sonarr \
           -e PUID=1000 \
           -e PGID=1000 \
           -e UMASK=022 \
           -e VERSION=stable \
           -e BACKUP=yes \
           -v /etc/localtime:/etc/localtime:ro \
           hotio/suitarr