#!/bin/bash

docker image build -t demo-site .
docker run -d -p 81:80 --name opdracht6 demo-site


