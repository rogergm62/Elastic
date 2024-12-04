#!/bin/bash
#wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.0.0-amd64.deb
#wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.0.0-amd64.deb.sha512
#shasum -a 512 -c elasticsearch-8.0.0-amd64.deb.sha512
#sudo dpkg -i elasticsearch-8.0.0-amd64.deb
#wget https://artifacts.elastic.co/downloads/kibana/kibana-8.0.0-amd64.deb
#sudo dpkg -i kibana-8.0.0-amd64.deb
#wget https://artifacts.elastic.co/downloads/logstash/logstash-8.0.0-amd64.deb
#sudo dpkg -i logstash-8.0.0-amd64.deb
#wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.0.0-amd64.deb
#sudo dpkg -i filebeat-8.0.0-amd64.deb
#wget https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-8.0.0-amd64.deb
#sudo dpkg -i metricbeat-8.0.0-amd64.deb

cat << EOF
 Execute the next command and replace this settings with false 
 sudo nano  /etc/elasticsearch/elasticsearch.yml 

 Enable security features
 xpack.security.enabled: false
 xpack.security.enrollment.enabled: false
EOF

read -p "Enter when ready" my_var

echo "re-loading daemon"
sudo systemctl daemon-reload
echo "enabling elasticsearch"
sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch
echo "enabling kibana"
sudo systemctl enable kibana
sudo systemctl start kibana
