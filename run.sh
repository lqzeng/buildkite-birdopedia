#!/bin/bash

echo "script started"
# docker run -dp 8080:8080 birdopedia
# go test -v ./...

# run tests
go test -v ./...

echo $KUBECONFIG
kubectl config --kubeconfig==/home/lucas/.kube/config

#echo $HOME/.kube/config

# check kube config
kubectl config view

# kubernetes deployment
kubectl apply -f kubernetes-deployment.yaml
echo "script finished"