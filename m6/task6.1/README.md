# Task 6.1
> Linux. IP routing.

## 6.1.1. Create virtual machines connection according to figure 1.

I have created 2 Ubuntu server 18.04 LTS VMs

![Task 6.1.1](./images/6-1-2.png)

## 6.1.2. VM2 has one interface (internal), VM1 has 2 interfaces (NAT and internal).
> Configure all network interfaces in order to make VM2 has an access to the Internet (iptables, forward, masquerade).

Config enp0s8 on VM1:  
sudo ip addr add 192.168.1.1/24 broadcast 192.168.1.255 dev enp0s8  
sudo ip link set enp0s8 up  

Config enp0s3 on VM2:  
sudo ip addr add 192.168.1.2/24 broadcast 192.168.1.255 dev enp0s3  
sudo ip link set enp0s3 up  
sudo ip route add default via 192.168.1.1
sudo echo nameserver 8.8.8.8 >> /etc/resolv.conf
sudo echo nameserver 4.4.4.4 >> /etc/resolv.conf

IP forwarding VM2: 
sudo bash -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'

Add iptables rules to forward traffic:  

sudo iptables -A FORWARD -i enp0s8 -o enp0s3 -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i enp0s8 -o enp0s3 -j ACCEPT
sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE
sudo iptables -t nat -A PREROUTING -i enp0s3 -p tcp --dport 2223 -j DNAT --to-destination 192.168.1.2:22
sudo iptables -S

![Task 6.1.2](./images/6-2-21.png)

## 6.1.3. Check the route from VM2 to Host.

![Task 6.1.3](./images/6-2-31.png)
![Task 6.1.3](./images/6-2-32.png)

## 6.1.4. Check the access to the Internet, (just ping, for example, 8.8.8.8).

![Task 6.1.4](./images/6-2-41.png)

## 6.1.5. Determine, which resource has an IP address 8.8.8.8.
> nslookup 8.8.8.8

![Task 6.1.5](./images/6-2-51.png)

> host 8.8.8.8

![Task 6.1.5](./images/6-2-52.png)

## 6.1.6. Determine, which IP address belongs to resource epam.com.
> dig epam.com

![Task 6.1.6](./images/6-2-61.png)

## 6.1.7. Determine the default gateway for your HOST and display routing table.

## 6.1.8. Trace the route to google.com.

![Task 6.1.8](./images/6-2-71.png)