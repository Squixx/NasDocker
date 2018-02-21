sudo ros config set rancher.network.interfaces.eth0.address 192.168.1.10/24
sudo ros config set rancher.network.interfaces.eth0.gateway 192.168.1.1
sudo ros config set rancher.network.interfaces.eth0.mtu 1500
sudo ros config set rancher.network.interfaces.eth0.dhcp false
sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server
sudo reboot