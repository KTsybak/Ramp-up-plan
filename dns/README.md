# Configured DNS server locally using bind
- The /etc/bind/named.conf.options file contains settings that define the list of clients from which recursive DNS queries are allowed and define various parameters for the DNS server.
- The /etc/bind/named.conf.local file contains the forward and reverse zones. DNS zones assign a specific area to manage and resolve DNS records.
- The /etc/bind/zones/test.local file is the forward zone file, the place where we define DNS records for direct DNS lookups.
- The /etc/bind/zones/reverse.test.local file is the reverse zone file where we define the DNS PTR records for reverse DNS lookups.
<img width="544" alt="Screenshot 2023-11-14 at 13 56 30" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/898711a6-cea6-43ba-83a2-840b98940d3d">
