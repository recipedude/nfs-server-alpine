#!/bin/sh

docker run -d --name nfs --privileged -p 2049:2049 -v /tmp:/nfsshare -e SHARED_DIRECTORY=/nfsshare itsthenetwork/nfs-server-alpine:latest

Add --net=host or -p 2049:2049