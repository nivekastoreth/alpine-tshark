#!/bin/sh
tshark -o 'ssl.desegment_ssl_records: TRUE' -o 'ssl.desegment_ssl_application_data: TRUE' -o 'ssl.keys_list: proxy,8080,http,/root/.mitmproxy/mitmproxy-ca.pem' -o 'ssl.debug_file: /root/wireshark-log' -i eth0   -w - 'tcp and host proxy and port 8080' | nc $1 $2
