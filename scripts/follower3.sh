#!/bin/bash
sudo cat > /etc/consul/config.json << EOL
{
  "datacenter": "vagrant-dc",
  "data_dir": "/var/cache/consul",
  "log_level": "INFO",
  "node_name": "consul-follower-3",
  "config_dir": "/etc/consul/config.d",
  "bind_addr": "0.0.0.0",
  "advertise_addr": "192.168.2.5",
  "domain": "consul.",
  "recursor": "8.8.8.8",
  "encrypt": "p4T1eTQtKji/Df3VrMMLzg==",
  "start_join": ["192.168.2.2"]
}
EOL
service consul stop
rm -rf /var/cache/consul/*
service consul start
