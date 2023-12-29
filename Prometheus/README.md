# This is a tutorial on setting up the prometheus monitoring system
- After downloading Prometheus and configuring it as a service, I go to the configuration file for Prometheus - **prometheus.yml**:  
  I'm adding a fragment:
  <img width="299" alt="Screenshot 2023-12-29 at 16 42 32" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/6fc48fc4-db4b-4bce-a97a-cfc09b5c7747">

  This fragment allows Prometheus to collect metrics from itself, which is useful for monitoring its own health and performance.
- I also set up remote host monitoring, for this purpose, I install **Node Exporter** on the client, which collects a large number of hardware and kernel indicators, including CPU and memory usage.When the client is ready for monitoring, I add it to the prometheus.yml:
  
  <img width="283" alt="Screenshot 2023-12-29 at 16 50 30" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/6a006f6c-af80-449b-839b-b3a205116072">  
  
  Node Exporter that runs and opens metrics on http://localhost:9100/ :
  <img width="1481" alt="Screenshot 2023-12-29 at 13 40 03" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/123a47c3-8568-4646-b10a-02319cad675e">
- Next, I set up monitoring of the NGINX web server with Prometheus. To do this, I install Nginx on the client, and for monitoring I use the ngx_http_stub_status_module, which provides basic information about the server data. Then I create a file where I specify the stub_status directive, which provides basic status information that responds to requests starting with the /metrics path:
- <img width="634" alt="Screenshot 2023-12-29 at 17 04 02" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/2d7427f0-c274-49be-b7b8-2f0f3cd1365e">


