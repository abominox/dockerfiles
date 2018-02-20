#!/bin/sh

docker run -it \
--name splunk \
--restart=always \
--hostname splunk \
-p 8000:8000  \
-p 9997:9997 \
-e "SPLUNK_START_ARGS=--accept-license" \
-v splunk:/opt/splunk/etc \
-v splunk:/opt/splunk/var  splunk/splunk:7.0.0
