#!/bin/bash

echo "script started"
# docker run -dp 8080:8080 birdopedia
# go test -v ./...

# run tests
go test -v ./...

# kubernetes deployment
kubectl apply -f kubernetes-deployment.yaml
echo "script finished"