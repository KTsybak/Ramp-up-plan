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
<br>-p – flag is used with nmap to perform scan on a specific port or range of ports;
</details>

<details>
<summary><h2>ping</h2></summary>
Ping is a command line command used to test the availability of and measure the response time from network devices, usually using the Internet Control Message Protocol (ICMP).ping is a command line command used to test the availability of and measure the response time from network devices, usually using the Internet Control Message Protocol (ICMP).
<br>- <strong>ping example.com</strong> - <i>сheck accessibility</i>

<br> <strong>Options</strong>
<br> -t	Using this option will ping the target until you force it to stop by using Ctrl+C.
<br> -a	This ping command option will resolve, if possible, the hostname of an IP address target.
<br> -n 	This option sets the number of ICMP Echo Requests to send, from 1 to 4294967295. The ping command will send 4 by default if -n isn't used.
<br> -l size	Use this option to set the size, in bytes, of the echo request packet from 32 to 65,527. The ping command will send a 32-byte echo request if you don't use the -l option.
<br> -f	Use this ping command option to prevent ICMP Echo Requests from being fragmented by routers between you and the target. The -f option is most often used to troubleshoot Path Maximum Transmission Unit (PMTU) issues.
<br> -i This option sets the Time to Live (TTL) value, the maximum of which is 255.
<br> -r count	Use this ping command option to specify the number of hops between your computer and the target computer or device that you'd like to be recorded and displayed. 

</details>

<details>
<summary><h2>telnet</h2></summary>
Telnet is a simple networking protocol and program that allows you to establish a remote connection to other computers over a network, usually using a text-based interface. Telnet sends text commands and receives responses over the network
<br>- <strong>telnet example.com 80</strong> - <i>establish a connection</i>

<br> <strong>Options</strong>
<br>  port -	Specifies a port number or service name to contact. If not specified, the telnet port (23) is used.
<br>  -L Specifies an 8-bit data path on output. This option causes the TELNET BINARY option to be negotiated on output.
<br>	-d	Activates debug mode
<br> 	-a	Attempts automatic login
<br> 	-n tracefile	Opens tracefile to record appropriate information (see also “set tracefile”)
<br> 	-l user	If the host supports environ, you will be logged in as the specified user.
<br> 	-e escape char	Sets an escape character
<br> 	-E	No character is recognized as escape character
<br> 	-x	Attempts to activate encryption

</details>
<details>
<summary><h2>openssl s_client</h2></summary>
openssl s_client is an OpenSSL utility command that allows you to connect to servers using SSL/TLS (Secure Sockets Layer/Transport Layer Security) protocols. This command allows you to establish a connection and get information about certificates, communication parameters, and other details about the SSL/TLS connection.
<br>- <strong>openssl s_client -connect example.com:443</strong> - <i>openssl s_client connect</i>

<br> <strong>Options</strong>
<br>  -help - Print out a usage messag;
<br>  -connect host:port - This specifies the host and optional port to connect to. It is possible to select the host and port using the optional target positional argument instead. 
<br>	-host hostname - Host to connect to;
<br> 	-port port - Connect to the specified port
<br> 	-cert filename - The client certificate to use, if one is requested by the server. The default is not to use a certificate.
<br> 	-CRL filename - CRL file to use to check the server's certificate.
<br> 	-key filename|uri - The client private key to use. 

</details>

</details>
<details>
<summary><h2>ssh</h2></summary>
SSH (Secure Shell) is a network protocol and cryptographic protocol designed to securely connect to and work remotely on remote servers. SSH allows you to execute commands on a remote server, manage files, and transfer data over an encrypted connection.<br>- <strong>ssh username@server_ip</strong> - <i>connecting to a remote server</i>
<br> <strong>ssh-keygen</strong> - <i>create public-private keys</i>
<br> <strong>Options</strong>
<br>  -p - Port to connect to on the remote host;
<br>  -V - Display the version number;
<br>	-v -  Verbose mode. It echoes everything it is doing while establishing a connection. It is very useful in the debugging of connection failures;
<br> 	-q - Suppresses all errors and warnings;
<br> 	-c - Selects the cipher specification for encrypting the session;
<br> 	-f - Requests ssh to go to background just before command execution;

</details>

</details>
<details>
<summary><h2>traceroute</h2></summary>
Traceroute is a command line command that allows you to trace the route of packets from your computer to a specified target IP address or domain name.
<br>- <strong>traceroute example.com</strong> - <i>basic usage</i>

<br> <strong>Options</strong>
<br>  –help - Information about the command;
<br>  -p port - Define the port for the query;
<br>	-n - Stop the resolving of the IP addresses;
<br> 	-w waittime - Maximum waiting time for each of the replies.
<br> 	-I - Use the ICMP echo for the requests.
<br> 	-m max_ttl - The TTL in traceroute means the maximum amount of hops.
</details>


<details>
<summary><h2>ss</h2></summary>
ss is a command line command used to display information about sockets (network connections) on a system. This command allows you to view active network connections, ports, addresses, and other parameters. ss is a useful tool for monitoring network activity on a computer.
<br>- <strong>ss</strong> - <i>displaying active sockets</i>

<br> <strong>Options</strong>
<br>  -t	The -t parameter tells ss to show TCP connections only.
<br>  -u	The –u parameter tells ss to show UDP connections only.
<br>	-l	The -l parameter tells ss to display listening sockets, which are omitted by default.
<br>  -n	The -n option tells ss to disable the resolving of service names.
<br>  -r	The -r option tells ss to enable DNS resolving in the output, which is turned off by default.
<br>  -m	The -m parameter tells ss to display socket memory usage information.
<br>  -p	The -p parameter tells ss to display the process that is using a socket.
<br>  -e	The -e option tells ss to display detailed socket information.
<br>  -x	The -x parameter tells ss to display UNIX domain sockets only.

</details>
<details>
<summary><h2>ip</h2></summary>
ip is a command line command for administering and configuring the network in Linux-based systems. It provides advanced functionality for managing network interfaces, routing rules, addresses, and other network parameters
<br>- <strong>ip link or ip a</strong> - <i>to display information about all network interfaces on a system</i>
<br>- <strong>ip a add 192.168.31.100/24 dev eth0</strong> - <i>To assign an IP address to a network interface, use the ip address add command. For example, to assign an IP address of 192.168.1.100 and a subnet mask of 255.255.255.0 to interface eth0</i>
<br>- <strong>ip a delete 192.168.31.100/24 dev eth0</strong> - <i>remove an IP address from a network interface</i>
<br>- <strong>ip route</strong> - <i>displaying information about routing</i>
<br>- <strong>ip route add 192.168.2.0/24 via 192.168.1.1</strong> - <i>this command adds a route to the 192.168.2.0/24 subnet through the router with the IP address 192.168.1.1</i>
 <br>- <strong>ip a delete 192.168.31.100/24 dev eth0</strong> - <i>remove an IP address from a network interface</i>
<br> <strong>Options</strong>
<br> -V, -Version - Print the version of the ip utility and exit.
<br> -h, -human, -human-readable - output statistics with human readable values followed by suffix.
<br> -d, -details - Output more detailed information.
</details>

<details>
<summary><h2>curl</h2></summary>
curl is a command line command for making HTTP requests and transferring data over a network. curl allows you to interact with web servers, download web page content, and send and receive data via HTTP, HTTPS, FTP, and other protocols.
<br>- <strong>curl [options/URLs]</strong> - <i>the basic curl syntax</i>


<br> <strong>Options</strong>
<br> -I - Obtain only headers;
<br> -k - Allow curl to work with insecure connections;
<br> --o, --output <file> - Store output in a file. 
<br> -i, --include	Specify that the output should include the HTTP response headers;
</details>

<details>
<summary><h2>wget</h2></summary>
Wget is a command-line tool for downloading files from the Internet. It allows you to download files from web servers and FTP servers using the command line.
<br>- <strong>wget https://example.com/file.txt</strong> - <i>downloading a file from a URL</i>

<br> <strong>Options</strong>
<br>-c or –continue: Continues a previously interrupted download.
<br>-N: Will only download a file if it’s newer than a file of the same name on your computer.
<br>-t [amount]: Sets how many times Linux wget will try to download a file.
<br>-w [time]: Sets how many seconds wget will wait between multiple downloads.
</details>

<details>
<summary><h2>rsync</h2></summary>
rsync is a command-line tool for synchronizing and copying files and directories between different systems or within the same system. rsync allows you to synchronize files efficiently over a network or locally and uses algorithms to transfer only the changed parts of files, making it fast and resource-efficient.
<br>- <strong>rsync -a D1 D2</strong> - <i>to mirror the directory D1 and its contents into another directory D2 on a single machine</i>

<br> <strong>Options</strong>
<br>-o - Copy the ownership of the files. (You probably need superuser privileges on the remote host.)
<br>-g - Copy the group ownership of the files. (You might need superuser privileges on the remote host.)
<br>-p - Copy the file permissions.
<br>-t - Copy the file timestamps.
<br>-r - Copy directories recursively, i.e., including their contents.
<br>-l - Permit symbolic links to be copied (not the files they point to).
<br>-D - Permit devices to be copied. (Superuser only.)
<br>-a - Mirroring: copy all attributes of the original files. This implies all of the options, -Dgloprt.
<br>-v - Verbose mode
</details>
<details>
<summary><h2>netstat</h2></summary>
netstat (Network Statistics) is a command line command to display information about network connections, routes, and network statistics on your system. It allows you to analyze the current state of the network and can be useful for identifying problems in the network connection.
<br>- <strong>netstat</strong> - <i>Display active network connections</i>

<br> <strong>Options</strong>
<br>-a - Displays all active ports
<br>-e - Shows statistics about your network connection (received and sent data packets, etc.)
<br>-i - Brings up the netstat overview menu
<br>-n - Numerical display of addresses and port numbers
<br>-p - Displays the connections for the specified protocol, in this case TCP (also possible: UDP, TCPv6, or UDPv6)
<br>-q - Lists all connections, all listening TCP ports, and all open TCP ports that are not listening
<br>-r - Displays the IP routing table
<br>-s - Retrieves statistics about the important network protocols such as TCP, IP, or UDP
</details>
