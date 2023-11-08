# Configured DNS server locally using bind
- The /etc/bind/named.conf.options file contains settings that define the list of clients from which recursive DNS queries are allowed and define various parameters for the DNS server.
- The /etc/bind/named.conf.local file contains the forward and reverse zones. DNS zones assign a specific area to manage and resolve DNS records.
- The /etc/bind/zones/test.local file is the forward zone file, the place where we define DNS records for direct DNS lookups.
- The /etc/bind/zones/reverse.test.local file is the reverse zone file where we define the DNS PTR records for reverse DNS lookups.
