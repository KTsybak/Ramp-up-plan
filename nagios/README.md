# This is my nagios setup guide
- Here I set up two servers - on one server I install nagios, the second server is controlled by it. Beforehand, I install Apache and PHP on the server with Nagios.
Next, I install Nagios 4, and also install the necessary plugins for proper operation, for monitoring remote hosts I need Nagios Remote Plugin Executor, it consists of two parts: 
  - The check_nrpe plugin, which uses the Nagios server.
  - The NRPE daemon, which runs on remote hosts and sends data to the Nagios server.
## Nagios configuration
- Sample configuration files are installed in the /usr/local/nagios/etc/ directory. 
- /usr/local/nagios/etc/nagios.cfg - is the main configuration file.
- To set up saving the configuration of each server - uncomment the line in the configuration file #cfg_dir=/usr/local/nagios/etc/servers and create this directory sudo mkdir /usr/local/nagios/etc/servers.
- To use the check_nrpe command in the Nagios service definitions, you need to add the following to the /usr/local/nagios/etc/objects/commands.cfg file:

define command{  
        command_name check_nrpe  
        command_line $USER1$/check_nrpe -H $HOSTADDRESS$ -c $ARG1$  
}  
This defines the name and parameters of the command line to execute the plugin.
## The configuration of the host monitored by Nagios
- First, the Nagios Remote Plugin Executor must be installed. In the file **/usr/local/nagios/etc/nrpe.cfg**, which is the configuration file for NRPE, the following settings need to be configured:  
  - server_address=my_server_ip  
  - allowed_hosts=127.0.0.1,::1,my_nagios_server_private_ip  
There is also an additional line:   
  - command[check_sda5]=/usr/local/nagios/libexec/check_disk -w 20% -c 10% -p /dev/sda5  
It defines a command to monitor disk space usage on the /dev/sda5 partition using the check_disk plugin and sets thresholds for sending warnings and critical messages
