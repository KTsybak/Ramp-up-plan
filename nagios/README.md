# This is my nagios setup guide
- Here I set up two servers - on one server I install nagios, the second server is controlled by it. Beforehand, I install Apache and PHP on the server with Nagios.
Next, I install Nagios 4, and also install the necessary plugins for proper operation, for monitoring remote hosts I need Nagios Remote Plugin Executor, it consists of two parts: 
  - The check_nrpe plugin, which uses the Nagios server.
  - The NRPE daemon, which runs on remote hosts and sends data to the Nagios server.
## Nagios configuration
- Sample configuration files are installed in the **/usr/local/nagios/etc/** directory. 
- **/usr/local/nagios/etc/nagios.cfg** - is the main configuration file.
- To set up saving the configuration of each server - uncomment the line in the configuration file #cfg_dir=/usr/local/nagios/etc/servers and create this directory sudo mkdir /usr/local/nagios/etc/servers.
- To use the check_nrpe command in the Nagios service definitions, you need to add the following to the /usr/local/nagios/etc/objects/commands.cfg file:

define command{  
        command_name check_nrpe  
        command_line $USER1$/check_nrpe -H $HOSTADDRESS$ -c $ARG1$  
}  
This defines the name and parameters of the command line to execute the plugin.

- To monitor servers, use the file /usr/local/nagios/etc/servers/my_monitored_server.cfg:
  <img width="760" alt="Screenshot 2023-12-30 at 16 22 39" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/94e51705-f6d8-4a77-ac2c-9a9c5280bd7d">
  This file defines control over whether the host is up or down, disk usage monitoring, and average load monitoring.

## The configuration of the host monitored by Nagios
- First, the Nagios Remote Plugin Executor must be installed. In the file **/usr/local/nagios/etc/nrpe.cfg**, which is the configuration file for NRPE, the following settings need to be configured:  
  - server_address=my_server_ip  
  - allowed_hosts=127.0.0.1,::1,my_nagios_server_private_ip  
There is also an additional line:   
  - command[check_sda5]=/usr/local/nagios/libexec/check_disk -w 20% -c 10% -p /dev/sda5  
It defines a command to monitor disk space usage on the /dev/sda5 partition using the check_disk plugin and sets thresholds for sending warnings and critical messages.
- Work of the nrpe service:
<img width="839" alt="Screenshot 2023-12-30 at 16 17 41" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/68b1e031-406a-44a8-84cd-6c07b0ef6b86">

## Notifications
One of the most important features of the monitoring platform is the notification system. To set up notifications in Nagios, set the following:
-  Install and configure Postfix Mail Server
- set enable_notifications=1 in the main configuration file /usr/local/nagios/etc/nagios.cfg
- configure the /usr/local/nagios/etc/objects/commands.cfg file, since I will use the postfix mail daemon to send emails, I will change the /bin/mail part of each command to /usr/bin/mail
  <img width="892" alt="Screenshot 2023-12-30 at 16 56 39" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/02c282cb-31ba-4ae3-a90f-eba1a8a44797">

- in the /usr/local/nagios/etc/objects/contacts.cfg file, replace the mail to which all notifications will be sent.In addition, it is necessary to specify in which states to send notifications, specify the period and define commands: service_notification_commands notify-service-by-email
host_notification_commands notify-host-by-email

  <img width="880" alt="Screenshot 2023-12-30 at 17 00 00" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/7a7f8135-4980-43b4-aeec-6c3d4ed2176c">

## Result
- So, having configured Nagios, I can successfully monitor the remote host:
  <img width="1112" alt="Screenshot 2023-12-30 at 17 06 35" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/b19c0306-3a8d-4568-bc38-b3899bcccfba">
- Also, for testing purposes, I created a large example.txt on the host with the fallocate -l 13G command, which took up almost all the free disk space, and the alert worked successfully:
  <img width="855" alt="Screenshot 2023-12-30 at 17 08 15" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/b57c0d73-a349-4971-a529-5730f31e9a28">
- These alerts are also successfully delivered to the local mail server.
  <img width="898" alt="Screenshot 2023-12-30 at 17 09 32" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/7ef8819e-a4f9-4328-bb76-ae03140cc7f6">




