#!/bin/sh
set -e
apk add --update go build-base git mercurial ca-certificates
cd /src
http_proxy=192.168.3.3:8118 https_proxy=192.168.3.3:8118 go build -ldflags "-X main.Version=$1" -o /bin/logspout
# go build -ldflags "-X main.Version=$1" -o /bin/logspout
apk del go git mercurial build-base
rm -rf /root/go /var/cache/apk/*

# backwards compatibility
ln -fs /tmp/docker.sock /var/run/docker.sock
