# This is a tutorial on how to set up Grafana
- А visualization program whose user interface displays metrics collected by Prometheus or another data source in an intuitive and visually appealing format. On the host, I installed and configured the grafana server, then I added Prometheus as a data source:
<img width="815" alt="Screenshot 2023-12-29 at 17 55 20" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/f37eda36-3eee-47aa-b05c-2eecfbfca4ca">

- Next, to display the metrics collected by the Node Exporter tool, I import the Node Exporter Full dashboard, which clearly displays most of the values collected from the client nodes. The dashboard then displays the performance metrics and health of the client node, including details of memory, RAM, and CPU.
<img width="1023" alt="Screenshot 2023-12-29 at 17 46 53" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/bba6a5c5-05ec-4aed-85d9-25a90bb7bc8e">

- To visualize the NGINX metrics collected by Prometheus using Grafana, I import a dashboard to display the NGINX metrics data. It shows whether the server is up or down and displays other useful metrics data.
  
<img width="1026" alt="Screenshot 2023-12-29 at 17 46 31" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/ab11a1e1-9032-4fb2-9110-21804da648b1">
