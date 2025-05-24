#!/bin/bash

docker build -t demo-site .
docker run -dt -p 81:80 --name opdracht6 demo-site
