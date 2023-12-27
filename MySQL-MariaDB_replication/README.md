# This is a tutorial on how to set up replication in MySQL or MariaDB. I set up replication in MariaDB.
- I'm using two Ubuntu 20.04 servers with MariaDB installed on them, and the following commands were used to install: 
  _sudo apt update,
  sudo apt install mariadb-server,
  sudo mysql_secure_installation_
## source-server:
- I configure the firewall on the source-server, allowing the replica-server to connect to the MariaDB port on the source-server by running the following command:
_sudo ufw allow from x.x.x.x(ip addr replica) to any port 3306_
- To configure my database on the source-server, I use the file _/etc/mysql/mariadb.conf.d/50-server.cnf_,here I edit the **bind-address** directive, set the public IP address of the source server, **server-id** = 1, **log_bin** = /var/log/mysql/mysql-bin.log - defines the main name and location of the MySQL/MariaDB log binary file. **binlog_do_db** = nation - the database I want to copy.
- Next, I create a user for the replica:
CREATE USER name@ip IDENTIFIED BY 'password'.  
I give the necessary rights - GRANT REPLICATION SLAVE ON *.* TO 'name'@'ip';  
And then execute the command FLUSH PRIVILEGES;  
After that, I close all open tables - FLUSH TABLES WITH READ LOCK;  
And I find out the current information about the state of the binary files of the output log.
<img width="610" alt="Screenshot 2023-12-27 at 14 40 58" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/d8593925-48f3-49fd-b913-ffa5d8846e6a">
