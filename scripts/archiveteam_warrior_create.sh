#!/bin/sh

docker run -d \
--publish 8001:8001 \
--restart unless-stopped \
--env SELECTED_PROJECT="auto" \
--env DOWNLOADER="RaxEmRemy" \
--env CONCURRENT_ITEMS="6" \
--name "archive_team-warrior" \
archiveteam/warrior-dockerfile
