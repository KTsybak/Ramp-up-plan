# This is a tutorial on setting up the prometheus monitoring system
## Prometheus.yml
After downloading Prometheus and configuring it as a service, I go to the configuration file for Prometheus - **prometheus.yml**:  
  I'm adding a fragment:
  <img width="299" alt="Screenshot 2023-12-29 at 16 42 32" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/6fc48fc4-db4b-4bce-a97a-cfc09b5c7747">

  This fragment allows Prometheus to collect metrics from itself, which is useful for monitoring its own health and performance.
## Node Exporter
I also set up remote host monitoring, for this purpose, I install **Node Exporter** on the client, which collects a large number of hardware and kernel indicators, including CPU and memory usage.When the client is ready for monitoring, I add it to the prometheus.yml:
  
  <img width="283" alt="Screenshot 2023-12-29 at 16 50 30" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/6a006f6c-af80-449b-839b-b3a205116072">  
  
  Node Exporter that runs and opens metrics on http://localhost:9100/ :
  <img width="1481" alt="Screenshot 2023-12-29 at 13 40 03" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/123a47c3-8568-4646-b10a-02319cad675e">
## Monitoring of the NGINX
Next, I set up monitoring of the NGINX web server with Prometheus. To do this, I install Nginx on the client, and for monitoring I use the ngx_http_stub_status_module, which provides basic information about the server data. Then I create a file where I specify the stub_status directive, which provides basic status information that responds to requests starting with the /metrics path:
  <img width="634" alt="Screenshot 2023-12-29 at 17 04 02" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/4b692b0f-b63b-4ca2-a039-ebc019772514">
  
  <img width="626" alt="Screenshot 2023-12-29 at 17 07 43" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/0970b421-b237-44d2-863e-46c918db95eb">  
  

- Next, these metrics need to be converted to a format that is compatible with Prometheus, and I use an exporter for this - the **NGINX Prometheus exporter**. I install and configure it on the client and then add this exporter to my Prometheus configuration file.

<img width="289" alt="Screenshot 2023-12-29 at 17 14 09" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/a0874261-e60a-418e-9e3f-fa6202a319b5">  

- NGINX metrics:
<img width="909" alt="Screenshot 2023-12-29 at 17 20 26" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/31e2c619-cf96-4a1f-bd12-e4d5bde36fce">

### So, the following was configured: 
- collecting metrics that Prometheus collects from itself
- monitoring on a remote host using Node Exporter
- monitoring an NGINX web server using nginx-prometheus-exporter
<img width="735" alt="Screenshot 2023-12-29 at 17 27 38" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/7ee78152-3bb1-4119-9030-52c764124015">

## ALERTING RULES
Next, you will configure alert rules in file rules.yml, when the specified condition in the alert rule is met, a alert event is generated.
I have created conditions for alerts: if any of the instances is down for one minute, then the following alert will be triggered, CPU load is > 80%, the disk usage is over 80%.
<img width="1022" alt="Screenshot 2023-12-29 at 17 40 54" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/89aabd59-344e-4c4d-bc14-c3df1a9e3e2b">
<img width="1016" alt="Screenshot 2023-12-29 at 17 41 22" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/f0749479-94c8-45a6-8d6f-bf652bd4221a">

- Alertmanager:
 <img width="1023" alt="Screenshot 2023-12-29 at 17 43 23" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/12bcf5ee-8f51-42e7-987d-9ab9178cfac7">


