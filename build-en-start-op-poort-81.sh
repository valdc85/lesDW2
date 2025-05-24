#!/bin/bash

docker image build -t demo-site .
docker run -d -p 81:80 --name opdracht6 demo-site
docker exec -it opdracht6 bash
apt update
apt install -y lynx
lynx http://localhost:81/


