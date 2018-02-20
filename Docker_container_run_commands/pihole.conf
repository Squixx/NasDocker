docker run -d \
  --restart=unless-stopped \
        --name=pihole \
         -p 80:80 \
         -p 53:53/tcp -p 53:53/udp \
         --mount 'type=volume,src=pihole,volume-driver=local,dst=/etc/pihole,volume-opt=type=nfs,volume-opt=device=:/mnt/workdisk/docker/pihole,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
         --mount 'type=volume,src=dnsmasq,volume-driver=local,dst=/etc/dnsmasq.d,volume-opt=type=nfs,volume-opt=device=:/mnt/workdisk/docker/dnsmasq,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
diginc/pi-hole