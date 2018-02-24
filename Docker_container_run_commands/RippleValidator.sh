docker run -d \
  --name rippledvalidator \
  --restart=unless-stopped \
  -p 51235:51235 \
  --mount 'type=volume,src=keystore,volume-driver=local,dst=/keystore,volume-opt=type=nfs,volume-opt=device=:/mnt/workdisk/docker/keystore,"volume-opt=o=addr=192.168.1.98,vers=4,soft,timeo=180,rsize=1048576,wsize=1048576,retrans=2"' \
  xrptipbot/rippledvalidator

 ##nHUxFdwpRkQ5EEHtLzHtKeTWsAwzoZuLwHpNCscjUXYAFkPrux6L