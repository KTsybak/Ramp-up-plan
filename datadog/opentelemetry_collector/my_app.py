from opentelemetry import metrics
import time
import os
import logging

meter = metrics.get_meter("file_counter")

file_count_metric = meter.create_counter(
    name="files_count",
    description="The number of files in the specified directory",
    unit="1",
)

folder_path = "/var/log/myservice"

log_file = '/var/log/myservice/file_counter.log'
file_handler = logging.FileHandler(log_file)
file_handler.setLevel(logging.INFO)
formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
file_handler.setFormatter(formatter)

logger = logging.getLogger(__name__)
logger.addHandler(file_handler)
logger.setLevel(logging.INFO)

def update_file_count_metric():
    file_count = len(os.listdir(folder_path))
    file_count_metric.add(file_count)
    logger.info(f"File count: {file_count}")

if __name__ == "__main__":
    while True:
        update_file_count_metric()
        time.sleep(60)
