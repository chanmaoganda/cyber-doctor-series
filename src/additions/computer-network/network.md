# Brief introduction to computer network

## Why we can visit sites like github, stack overflow, amazon?
All computers are connected by network. Those public sites we can visit are registered in global DNS server or China's DNS server(If you visit web in China). 

## Then what is DNS?
Domain Name Service(DNS as abbr.) is parsing domains like github.com to an valid IP address like 140.82.112.0. What we actually visit is the IP address.

## Let's talk about something interesting.
If you plays minecraft in a public server, you can simply type the domain in multi-player mode and connect to that server. But if you open a locally running minecraft server and give the IP with port, for example 127.0.0.1:25565, your friends cannot connect to your device. That means not all IP addr is public to all. I will show you what is inner router and outer router.

Suppose A and B are playing minecraft. A starts a server exposing port 25565 on his pc. B starts a server exposing port 25565 on his pc. A can not connect to B, nor can B. That's because A's server is listening to 127.0.0.1:25565 in his inner router and if B tries to connect the same address, 127.0.0.1 is hit because it is a loopback address, B will connect to his server but never A's server.

We can fix this by exposing one port in our pc to public router. Suppose A uses a tool to expose 127.0.0.1:25565 to public router 56.122.34.144:29444. Then when B visits 56.122.34.144:29444, the request will be routed to A's pc with requesting 127.0.0.1:25565 automatically.

```
Client B (Requesting)               Server A (Hosting the Site)
+-------------+                     +--------------------------+
|   Browser   |                     | Local Device (127.0.0.1) |
| or HTTP App |                     | Public Site (Port 25565) |
+-------------+                     +--------------------------+
        |                                      ^
        | 1. Send request to A's public IP     |
        +------------------------------------->|
        |                                      |
        |                    +---------------------------------+
        |                    | A's Router                      |
        |                    |(Public IP: 56.122.34.144:29444) |
        |                    | - NAT & Port Forwarding         |
        |                    +---------------------------------+
        |                                      ^
        | 2. Router forwards request to A's    |
        |    internal IP (127.0.0.1:25565)     |
        +------------------------------------->|
        |                                      |
        | 3. A processes the request           |
        |    and sends response back to B      |
        <-------------------------------------+

```

The picture above shows how B requested the address from A.