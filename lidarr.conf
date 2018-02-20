docker run -d \
		   --restart=unless-stopped \
           --name lidarr \
           -p 8686:8686 \
           -e APP=lidarr \
           -e PUID=1000 \
           -e PGID=1000 \
           -e UMASK=022 \
           -e VERSION=stable \
           -e BACKUP=yes \
           -v /etc/localtime:/etc/localtime:ro \
           -v /mnt/docker/lidarr/config:/config \
		   -v /mnt/media:/media \
           hotio/suitarr