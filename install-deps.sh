#!/bin/bash

# for i in http{,s}_proxy; do echo -e $i="\"http://trendgate.interswitchng.com:8080\"" >> /etc/environment; done
apt update
apt install -y ifupdown python
# cp $(which python3) /usr/bin/python