#!/bin/bash

docker image build -t demo-site .
docker run -dt -p 81:80 --name opdracht6 demo-site
docker container ls -a

