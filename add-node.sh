#!/bin/bash

echo run this on master node 'microk8s add-node'
echo run this on new node `microk8s join ip-172-31-20-243:25000/DDOkUupkmaBezNnMheTBqFYHLWINGDbf`
microk8s kubectl get no
microk8s leave