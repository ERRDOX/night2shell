#!/bin/bash

# ./check_port.sh google.com 443 

# Only works in Bash (not Dash, not POSIX sh).
# Does not validate TLS — it's just a raw TCP socket.
# Useful in Docker containers where:
# - You have no apk, apt, or package manager
# - You only need to check port accessibility


host="$1"
port="$2"

if [[ -z "$host" || -z "$port" ]]; then
  echo "Usage: $0 <host> <port>"
  exit 1
fi

if echo > /dev/tcp/$host/$port 2>/dev/null; then
  echo "✅ Port $port on $host is open"
else
  echo "❌ Port $port on $host is closed or unreachable"
fi
