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

## replica-server:
- Having previously made a mysqldump of nation.sql and sent it to the replica server, I create the nation database on the replica server with the following command: CREATE DATABASE nation;   
Then I run the command sudo mysql nation < /tmp/nation.sql.
- Next, I edit the file /etc/mysql/mariadb.conf.d/50-server.cnf, setting server-id = 2, log_bin = /var/log/mysql/mysql-bin.log, binlog_do_db = nation, relay-log = /var/log/mysql/mysql-relay-bin.log - defines the location of the replica relay log file.
- Configure replication settings:
  <img width="903" alt="Screenshot 2023-12-27 at 15 02 15" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/489dd25e-1ef3-44ae-9478-7bc4738a72aa">
- replica activation: START SLAVE;
  <img width="820" alt="Screenshot 2023-12-27 at 15 07 20" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/2047523e-75f0-4de1-8535-0943000061f5">

## Result:
- Tables that the database currently has on the _replica-server_:
  <img width="710" alt="Screenshot 2023-12-27 at 15 09 44" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/cb25cff6-5eb3-4492-971d-47dfcba15826">
- On the _source-server_, create the test_test table:
  <img width="722" alt="Screenshot 2023-12-27 at 15 12 08" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/9be81571-f27b-4417-a423-480b853bb6f7">
- The test_test beam has successfully appeared on the _replica-server_:
  <img width="868" alt="Screenshot 2023-12-27 at 15 16 37" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/f8847466-e461-40ab-8974-3994f63f383c">



  

