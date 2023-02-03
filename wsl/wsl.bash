#!/bin/bash

# Timezone can not be changed easy. it's an open issue
# https://github.com/microsoft/WSL/issues/6417

# change the WSL Debian VM timezone to UTC
echo "UTC" | tee /etc/timezone
ln -sf /usr/share/zoneinfo/UTC /etc/localtime
