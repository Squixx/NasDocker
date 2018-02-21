docker run -d --init \
           --name squeezebox \
           -p 9000:9000 \
           -p 9090:9090 \
           -p 3483:3483 \
           -e PUID=1000 \
           -e PGID=1000 \
           -p 3483:3483/udp \
           -v /etc/localtime:/etc/localtime:ro \
           --mount 'type=volume,src=media,volume-driver=local,dst=/srv/music,volume-opt=type=nfs,volume-opt=device=:/mnt/volume1/media/server,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
           --mount 'type=volume,src=squeezebox,volume-driver=local,dst=/srv/squeezebox,volume-opt=type=nfs,volume-opt=device=:/mnt/workdisk/docker/squeezebox,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
           larsks/logitech-media-server