#!/bin/bash
mkdir -p memes
curl -s "https://api.imgflip.com/get_memes" \
| jq -r '.data.memes[].url' \
| xargs -n 1 -P 8 wget -q -P memes