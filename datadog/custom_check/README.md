# Custom Agent Check
- custom_check.py is a check file in the checks.d directory that makes an HTTP request to the specified URL, checks the response status, and sends the corresponding metric to Datadog. If the request is successful, the HTTP response status code is received and a metric of type "gauge" with the name "http.status" is sent to Datadog. If an error occurs during the request (for example, if the server is unavailable or the HTTP status is not successful), the HTTP status code is set to 500 and a metric with the 'error' tag is sent.
- custom_check.yaml - Datadog Agent configuration file, which includes information about check and log processing settings.
- To make sure that the check is running, I execute the command:
  <img width="741" alt="Screenshot 2024-01-28 at 15 29 18" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/b32ad314-d2de-4b6c-9134-73debe45b353">
- metric "http.status" in Datadog:
  <img width="1344" alt="Screenshot 2024-01-28 at 15 53 32" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/2527e302-dc4c-4103-8763-951a29120dea">
