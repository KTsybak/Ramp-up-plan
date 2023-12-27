# This is a tutorial on how to set up replication in MySQL or MariaDB. I set up replication in MariaDB.
- I'm using two Ubuntu 20.04 servers with MariaDB installed on them, and the following commands were used to install: 
  _sudo apt update,
  sudo apt install mariadb-server,
  sudo mysql_secure_installation_
- I configure the firewall on the source-server, allowing the replica-server to connect to the MariaDB port on the source-server by running the following command:
_sudo ufw allow from x.x.x.x(ip addr replica) to any port 3306_
