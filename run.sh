#!/bin/bash

echo "script started"
docker run -dp 8080:8080 birdopedia
go test -v ./...

echo "script finished"