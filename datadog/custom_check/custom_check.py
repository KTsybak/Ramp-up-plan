import requests
from datadog_checks.base import AgentCheck



class CustomCheck(AgentCheck):
    def check(self, instance):
        url_to_check = 'http://172.17.0.5/nginx_status/'


        try:
            response = requests.get(url_to_check)
            response.raise_for_status()
            http_status_code = response.status_code
            tags = ['url:' + url_to_check]
            self.gauge("http.status", http_status_code, tags=tags)



        except requests.RequestException as e:
            self.log.error(f"Error while checking {url_to_check}: {e}")
            http_status_code = 500
            tags = ['url:' + url_to_check, 'error']
            self.gauge("http.status", http_status_code, tags=tags)
