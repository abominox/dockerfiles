#!/bin/sh

# Docker run script to create a Splunk Universal Forwarder 
# and forward traffic to full Splunk instance.

docker volume create splunk_forwarder

docker run \
--name splunkuniversalforwarder \
--restart=always
--env SPLUNK_START_ARGS=--accept-license \
--env SPLUNK_FORWARD_SERVER=192.168.1.3:9997 \
--env SPLUNK_USER=root \
--volume splunk_forwarder:/host/containers:ro \
--volume splunk_forwarder:/docker/log:ro \
--volume splunk_forwarder:/var/run/docker.sock:ro \
--volume splunk_forwarder:/opt/splunk/etc \
--volume splunk_forwarder:/opt/splunk/var \
-d splunk/universalforwarder:7.0.0-monitor
