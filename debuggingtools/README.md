# Debugging and networking troubleshooting tools
<details>
<summary><h2>nc</h2></summary>
The nc utility, which stands for "netcat," is a very powerful and flexible tool for command-line network communication. nc can be used as a client or server to create TCP or UDP connections, as well as to send and receive data over the network.
<br>- <strong>nc -lp 8080</strong> - <i>run in server mode listening to the port 8080</i>
<br>- <strong>nc ip address 8080</strong> - <i>connecting to the server</i>
<br> <strong>Options</strong>
<br>-6 – use IPv6 protocol. By default, the -4 and IPv4 parameters are used, respectively;
<br>-h – display help with a list of available parameters;
<br>-i delay – add a delay between sending strings or scanning ports. Set in seconds;
<br>-l – listening mode. Used with port indication;
<br>-N – close the connection when the end of the file is reached when sending it;
<br>-n – Work with IP addresses directly without using DNS, also disable port search;
<br>-P username – specify the username to connect to the proxy;
<br>-x address:port – specify the address and port to connect to the proxy;
<br>-p port – specify the port number. In most cases, the port is read without specifying a parameter;
<br>-U – use UNIX domain socket (for interprocess communication);
<br>-u – use UDP protocol, TCP is used by default;
<br>-v – detailed mode. Used when scanning;
<br>-W number of packets – close the connection after receiving a certain number of packets;
<br>-w timer – enable timer to limit connection time. Set in seconds;
<br>-z – disable sending data. Used when scanning.
</details>

<details>
<summary><h2>nmap</h2></summary>
Nmap, short for "Network Mapper," is a powerful and widely used open-source network scanning and security auditing tool.  Nmap can be used to discover hosts and devices on a network. It can identify live hosts, their IP addresses, and open ports.
<br>- <strong>nmap ip address </strong> - <i>to scan using IP Address</i>
<br>- <strong>nmap test.com</strong> - <i>to scan using Hostname</i>
<br>- <strong>nmap 192.168.31.*</strong> - <i>to scan whole subnet  </i>
<br>- <strong>nmap 192.168.31.1-20</strong> - <i>scan specific range of IP address </i>

<br> <strong>Options</strong>
<br>-v – to get more detailed information about the remote machines;
<br>-sA – to scan to detect firewall settings;
<br>-sL – to identify Hostnames;
<br>-h – to get some help ;
<br>-p – flag is used with nmap to perform scan on a specific port or range of ports. ( In our case it will scan port 80,443 and 21 );
</details>
