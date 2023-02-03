#!/bin/bash

# change the WSL Debian VM timezone to UTC
echo "UTC" | tee /etc/timezone
ln -sf /usr/share/zoneinfo/UTC /etc/localtime
