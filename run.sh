#!/bin/bash

echo "script started"
# docker run -dp 8080:8080 birdopedia
# go test -v ./...

# run tests
go test -v ./...

# KUBECONFIG="/home/lucas/.kube/config"
# echo $KUBECONFIG

kubectl proxy --port=8080

# check kube config
kubectl config view

# kubernetes deployment
kubectl apply -f kubernetes-deployment.yaml
echo "script finished"