# Task 6.a1
> Linux. IP routing.

## 6.1a.1. Create virtual machines connection according to figure 1.

![Task 6.1a.1](./images/6-1-2.png)

## 6.1a.2. VM2 has one interface (internal), VM1 has 2 interfaces (NAT and internal).
> Configure all network interfaces in order to make VM2 has an access to the Internet (iptables, forward, masquerade).

![Task 6.1a.2](./images/6-2-21.png)

## 6.1a.3. Check the route from VM2 to Host.

![Task 6.1a.3](./images/6-2-31.png)
![Task 6.1a.3](./images/6-2-32.png)

## 6.1a.4. Check the access to the Internet, (just ping, for example, 8.8.8.8).

![Task 6.1a.4](./images/6-2-41.png)

## 6.1a.5. Determine, which resource has an IP address 8.8.8.8.
> nslookup 8.8.8.8

![Task 6.1a.5](./images/6-2-51.png)

> host 8.8.8.8

![Task 6.1a.5](./images/6-2-52.png)

## 6.1a.6. Determine, which IP address belongs to resource epam.com.
> dig epam.com

![Task 6.1a.6](./images/6-2-61.png)

## 6.1a.7. Determine the default gateway for your HOST and display routing table.

## 6.1a.8. Trace the route to google.com.

![Task 6.1a.8](./images/6-2-71.png)