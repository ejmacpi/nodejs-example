#! /bin/bash
docker rm --force node-http-server
docker rmi node-http-server:latest
docker build --no-cache --pull -f Dockerfile -t "node-http-server" .
docker run -d --name "node-http-server" -p 9002:9002 -v $(pwd):/app/share node-http-server
