#!/bin/bash

echo "script started"
# docker run -dp 8080:8080 birdopedia
# go test -v ./...

# run tests
go test -v ./...

#minikube start

# check kube config
#kubectl config view

kubectl get all

# kubernetes deployment
kubectl apply -f kubernetes-deployment.yaml
echo "script finished"