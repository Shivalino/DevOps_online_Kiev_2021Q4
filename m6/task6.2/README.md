# Task 6.2
> Configuring  DHCP, DNS serversand dynamic routing using OSPF protocol.

## 6.2.1. Use  already created internal-network for three VMs (VM1-VM3).
> VM1 has NAT and internal, VM2, VM3 – internal only interfaces..

![Task 6.2.1](./images/6-1-2.png)

## 6.2.2. Install and configure DHCP server on VM1. .
> (3 ways: using VBoxManage, DNSMASQ and ISC-DHSPSERVER).  You should use at least 2 of them.

![Task 6.2.2](./images/6-2-21.png)

## 6.2.3. Check VM2 and VM3  for obtaining  network addresses from DHCP server. 

![Task 6.2.3](./images/6-2-31.png)
![Task 6.2.3](./images/6-2-32.png)

## 6.2.4. Using existed network for three VMs ( from p.1) install and configure DNS server on VM1.
>  (You can use DNSMASQ, BIND9 or something else). 

![Task 6.2.4](./images/6-2-41.png)

## 6.2.5. Check VM2 and VM3  for gaining access to DNS server ( naming services).
> nslookup 8.8.8.8

![Task 6.2.5](./images/6-2-51.png)

> host 8.8.8.8

![Task 6.2.5](./images/6-2-52.png)

## 6.2.6. ***Using the scheme which follows, configure dynamic routing using OSPF protocol. 
> dig epam.com

![Task 6.2.6](./images/6-2-61.png)

## 6.2.7. Check results.

![Task 6.2.7](./images/6-2-71.png)