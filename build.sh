#!/bin/sh
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags netgo -ldflags '-w -extldflags "-static"'
./fleek man > fleek.1
gzip fleek.1
