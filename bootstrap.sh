#!/bin/bash

sudo snap install  microk8s --classic
sudo microk8s status --wait-ready
sudo microk8s inspect
sudo microk8s enable dns storage ingress 
sudo microk8s enable registry:size=20Gi

echo "alias kubectl='microk8s kubectl'" >>~/.bash_aliases
echo "alias k='microk8s kubectl'" >>~/.bash_aliases
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
sudo iptables -P FORWARD ACCEPT

kubectl get all --all-namespaces