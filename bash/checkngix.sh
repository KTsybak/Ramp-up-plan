#!/bin/bash

nginx_url="http://192.168.31.111" 

check_nginx_status() {
    http_status=$(curl -s -o /dev/null -w "%{http_code}" "$nginx_url")

    if [ "$http_status" -eq 200 ]; then
        echo "Nginx is running: HTTP Status $http_status"
    else
        echo "Nginx is not responding as expected: HTTP Status $http_status"
    fi
}

# Main execution
check_nginx_status
