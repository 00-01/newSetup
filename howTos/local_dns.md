## 1 install
    sudo apt install dnsmasq
    
## 2 edit config
    sudo nano /etc/dnsmasq.conf

### 1. uncomment
    domain-needed
    bogus-priv
domain-needed – This stops Dnsmasq from forwarding local names without a domain part to the upstream DNS server. In our installation, it means example.com will be eligible for resolution via Google but example or web-server will not. It reserves dot-less names for your local network.
bogus-priv – Prevents forwarding DNS reverse-lookup queries to the upstream DNS server. It means internal IPs like 192.168.0.101 will never be exposed to Google. Not enabling this could unintentionally leak the architecture of your internal network to your upstream provider.
    
### 2. add new lines
    server=8.8.8.8
    server=4.4.4.4
    
### 3. adjust cache
    cache-size=1000

## 3 map hostname to ip
    sudo nano /etc/hosts
    
### 1. add
    {IP_ADDRESS:PORT} {DOMAIN_NAME}
    192.168.0.101:8000 web-server
    192.168.0.105 gateway.lan
    
## 4 restart service
    sudo service dnsmasq restart
    sudo service dnsmasq status
