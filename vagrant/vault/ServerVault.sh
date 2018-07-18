#!/bin/bash

yum install -y unzip 
curl -O https://releases.hashicorp.com/vault/0.10.3/vault_0.10.3_linux_amd64.zip 
unzip vault_0.10.3_linux_amd64.zip
cp vault /usr/bin/
cp /vagrant/vault/vault.cnf /etc/default/
cp /vagrant/vault/vault.service /etc/systemd/system/vault.service

systemctl daemon-reload
systemctl enable vault
systemctl restart vault


export VAULT_ADDR='http://127.0.0.1:8200'

