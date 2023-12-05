# Using OpenTelemetry Collector 
This Python code counts the number of files in a given directory every minute and reports this number as a metric. The metric "files_count" is updated, and the data is also written to the file "/var/log/myservice/file_counter.log". Also, otel-collector is configured to receive metrics using datadog as an exporter.

- The resultant metrics in Datadog: 
<img width="936" alt="Screenshot 2023-12-06 at 00 26 23" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/00446fdd-88ef-488e-ae1f-5d11ecf22754">

- The resultant logs in Datadog:
 <img width="1150" alt="Screenshot 2023-12-06 at 00 25 57" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/5d8fca51-8e3b-4519-89d9-ce00c2e4e220">
