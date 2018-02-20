docker run -d \
--restart=unless-stopped \
   --name="home-assistantt" \
   -e "TZ=Europe/Amsterdam" \
   -p 8123:8123 \
   --mount 'type=volume,src=homeassistant,volume-driver=local,dst=/config,volume-opt=type=nfs,volume-opt=device=:/mnt/workdisk/docker/homeassistant,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
homeassistant/home-assistant