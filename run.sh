#!/bin/bash

docker rm -fv kingdee-server
docker run -d --name kingdee-server -p 10060:10060 -p 10061:10061 -p 10688:10688 hyperhq/kingdee-server:x86
docker ps
