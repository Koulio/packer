#!/bin/bash

export HOST_IP=${HOST_IP:-$(ec2-metadata --local-ipv4 | awk '{print $2}')}
export PRIVATE_IPV4=${PRIVATE_IPV4:-$HOST_IP}
