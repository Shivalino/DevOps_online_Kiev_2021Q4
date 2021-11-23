# Task 3.2 Network Fundamentals
> Connect local networks using the Internet and make VLAN settings.

## 1. Connecting local networks using the Internet
> See screenshots:

![NF2_01](./images/3.2_01.png)
![NF2_02](./images/3.2_02.png)
![NF2_03](./images/3.2_03.png)

## 2. VLAN settings in the Data Center
> Check the connection between the servers using the ping command and the route of the packet using the tracert with the mask 255.255.255.0
> For all 3 servers we have 1 hop:
> The ICMP packet sent by the tracert retrieves the destination IP from the switch's ARP table and then goes directly to the destination.

![NF2_04](./images/3.2_04.png)

> Check the connection between the servers using the ping command and the route of the packet using the tracert with the mask 255.255.255.192
> Subnet mask 255.255.255.192 makes all 3 servers with ip .50 .100 and .150 isolated in differenst subnets.
> So ARP drops packets from enother networks:

![NF2_06](./images/3.2_06.png)
![NF2_08](./images/3.2_08.png)

> except ip .50 because the Router have the same subnet ip .1 and we can see 1 hop to destination:

![NF2_07](./images/3.2_07.png)

> Create 3 VLANS and tracert enother server. Because all 3 servers are in separated vlans we can see:

![NF2_09](./images/3.2_09.png)
![NF2_10](./images/3.2_10.png)

## 3. VLAN settings in the Data Center. Additional task with CLI