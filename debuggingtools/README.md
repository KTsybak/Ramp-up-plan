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
<img width="853" alt="Screenshot 2023-11-14 at 15 59 31" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/9acfeb6b-805f-489a-b2d4-315385fe72c8">
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

<img width="543" alt="Screenshot 2023-11-14 at 16 02 43" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/44fa69bc-9d02-455a-b1cd-62462e5a5c5a">

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
<br> <img width="755" alt="Screenshot 2023-11-14 at 16 05 46" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/61a61254-e640-4d02-8393-e68b47537853">

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
<details>
<summary><h2>ps</h2></summary>
ps is a command line command for displaying information about processes running on your system. It allows you to view a list of active processes, their attributes, and other information. Here are some of the main features and uses of the ps command
<br>- <strong>ps</strong> - <i>by default, the ps command displays a list of all processes running in the current shell</i>

<br> <strong>Options</strong>
<br> ps -ef or ps -aux − List currently running processes in full format
<br>ps -ax − List currently running processes
<br>ps -u <username> − List processes for a specific user
<br>ps -C <command> − List processes for a given command
<br>ps -p <PID> − List processes with a given PID
<br>ps -ppid <PPID> − List processes with a given parent process ID (PPID)
<br>pstree − Show processes in a hierarchy
<br>ps -L − List all threads for a particular process
<br>ps --sort pmem − Find memory leaks
<br>ps -eo − Show security information
<br>ps -U root -u root u − Show processes running by root
</details>

<details>
<summary><h2>dig</h2></summary>
dig (Domain Information Groper) is a command-line tool for performing queries to DNS servers. It allows you to get information about DNS records for specified domain names or IP addresses.
<br>- <strong>dig example.com</strong> - <i>getting DNS records</i>
<br>
<br>Types of resource records of the DNS
<br>A	IPv4 IP address	192.168.1.5 or 75.126.153.206
<br>AAAA	IPv6 IP address	2607:f0d0:1002:51::4
<br>CNAME	Canonical name record (Alias)	s0.cyberciti.org is an alias
<br>for d2m4hyssawyie7.cloudfront.net
<br>MX	Email server host names	smtp.cyberciti.biz or mx1.nixcraft.com
<br>NS	Name (DNS) server names	ns1.cyberciti.biz or ns-243.awsdns-30.com
<br>PTR	Pointer to a canonical name.
<br>Mostly used for implementing reverse DNS lookups	82.236.125.74.in-addr.arpa
<br>SOA	Authoritative information about a DNS zone	
<br>TXT	Text record	
<br>

<br> <strong>Options</strong>
<br>-x- to map addresses to names (reverse lookups)
<br>+short - short answer using the dig
<br> -f lookup.txt - option to the dig command that makes dig operate in batch mode
<br>-b address[#port]	Bind to source address/port
<br>-p port	Specify port number
<br>-q name	Specify query name
<br>-t type	Specify query type
<br>-c class	Specify query class
<br>-k keyfile	Specify tsig key file
<br>-y [hmac:]name:key	Specify named base64 tsig key
<br>-4	Use IPv4 query transport only
<br>-6	Use IPv6 query transport only
<br>-m	Enable memory usage debugging

</details>
<details>
<summary><h2>host</h2></summary>
The host command is a command-line tool used to resolve domain names and display related information. It is used to resolve domain names to IP addresses and vice versa, and can be useful for diagnosing network problems and checking the status of DNS servers.
<br>- <strong>host example.com</strong> - <i>resolve the domain name to an IP address</i>

<br> <strong>Options</strong>
<br>-a or -v - It used to specify the query type or enables the verbose output.
<br>-t - It is used to specify the type of query
<br>-R - In order to specify the number of retries you can do in case one try fails. If anyone try succeeds then the command stops.
<br>-l - In order to list all hosts in a domain.
</details>

<details>
<summary><h2>mtr</h2></summary>
mtr (My Traceroute) is a command-line tool that combines the functions of the traceroute and ping utilities. It is used to diagnose and measure network routes to a specified target system or IP address. mtr provides more detailed information about intermediate nodes and packet loss than regular traceroute
<br>- <strong>mtr example.com</strong> - <i>run mtr to diagnose the network route</i>

<br> <strong>Options</strong>
<br>-h–help	Show all the available options.
<br>-v–version	Show the version of the MTR command.
<br>-r–report	This starts the report mode. In this mode, it will run the specified by “–c” number of times and show statistics at the end.  
<br>-w–report-wide	Wide report mode. The difference with the previous is that it won’t cut hostnames in the report. 
<br>-c COUNT–report-cycles COUNT	Specify the number of pings. 
<br>-s BYTES–psize BYTES PACKETSIZE	Set the size of the packets. If set to a negative number, it will send packets of random size. 
<br>-t–curses	Force curses-based terminal interface.
<br>-n–no-dns	Show numeric IP numbers and no hostname resolving.
<br>-g–gtk	Force GTK+ interface. 
<br>-p–split	Set the mtr command for the split-user interface. 
<br>-l–raw	With the letter “L”, you can set the use of the raw output format. 
<br>-a IP.ADD.RE.SS–address IP.ADD.RE.SS	Bing outgoing packets’ sockets to a particular interface. 
<br>-i SECONDS–interval SECONDS	Set the time in seconds between each ICMP ECHO request. 
<br>-u	Force UDP use instead of ICMP ECHO.
<br>-4	Force IPv4 only.
<br>-6	Force IPv6 only.
</details>

<details>
<summary><h2>htop</h2></summary>
htop is an interactive process and system resource monitor in a command-line environment for Unix-like operating systems. htop provides more functionality and information than the standard top command and allows you to view and control processes on your system.
<br>- <strong>htop</strong> - <i>htop can be run from the command line</i>
<br> <strong>Options</strong>
<br>-d –delay=DELAY	Delay between output updates, in tenths of seconds.
<br>-C –no-color – Run htop in monochrome mode.
<br>-p –pid=PID,PID…	Display output for these PIDs only.
<br>-s –sort help	Print a list of column names, for which the htop output can be sorted.
<br>-s –sort COLUMN	Sort the output based on COLUMN
<br>-u–user=USERNAME	Display processes for the user with this USERNAME only.
<br>-v –version	Display htop version and exit.
</details>

<details>
<summary><h2>top</h2></summary>
The Unix top command is useful for monitoring systems continuously for processes that take more system resources like the CPU time and the memory. top periodically updates the display showing the high resource consuming processes at the top. 
<br>- <strong>top</strong> - <i>the top command can be started simply by giving the command</i>
<br> <strong>Options</strong>
<br>-h, -v	print program version, usage prompt and quit
<br>-b	work in batch mode. No inputs are accepted and top quits after -n number iterations
<br>-n	work for the given number of iterations and quit.
<br>-d	delay time interval between iterations in in the format ss[.tt] seconds
<br>-H	Show threads. By default, processes are displayed. LWP ids are displayed under PID.
<br>-i	do not display idle processes
<br>-u	Report only processes with the given effective user id or user name
<br>-U	Report only processes with the given real, effective, saved or filesystem user id or user name
<br>-p	Monitor the processes identified by the given list of process ids.
<br>-s	work in secure mode
<br>-S	Display cumulative CPU time for each process and its children which have died and have been waited for by it
</details>
