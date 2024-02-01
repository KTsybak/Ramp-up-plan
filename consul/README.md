## This is a guide on how to configure Consul to create a service discovery and configuration system.  
To do this, I'm configuring 3 servers and one client.
First, I install consul on each server. Then it can be run as a daemon or as a background process. 
- To run as a daemon, I create a service file _/etc/systemd/system/consul.service_ and a _Json configuration file_ for Consul.
- I use the following command to run in the background process on server 1:   
_consul agent -bootstrap -server -data-dir /tmp/consul -bind=192.168.31.101_  
Since the bootstrap option was enabled, this server was able to enter the leader state by itself to initiate a single-host cluster.
On servers 2 and 3, I run the consul without the initial boot option.

<img width="745" alt="Screenshot 2024-01-31 at 16 50 36" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/57b20f2e-0c61-4ae7-9d64-6e022baa3cb2">
<img width="884" alt="Screenshot 2024-01-31 at 16 50 47" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/f7e2cea9-283b-43ab-bc70-15fbd97e5a1c">  

Here we have errors because servers 2 and 3 cannot find the cluster leader and cannot become leaders themselves. This condition occurs because our second and third servers are powered on, but none of these servers are connected to each other yet. So next, we connect these servers to the first one.  

<img width="606" alt="Screenshot 2024-01-31 at 17 07 16" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/bcec1497-d71a-4c41-87e3-b4be9d58e226">
Since server1 was started in bootstrap mode, it has the right to make decisions without consulting the other servers. Therefore, I will continue to run it without this mode.

