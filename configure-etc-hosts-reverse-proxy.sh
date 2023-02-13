#!/bin/sh

if [ -z $REVERSE_PROXY_URL ]; then
  echo "No reverse proxy URL found, skipping /etc/hosts configuration."
  exit
fi

IP=$(getent hosts $REVERSE_PROXY_URL | awk '{print $1}')

if [ -z $IP ]; then
  echo "Cannot resolve '$REVERSE_PROXY_URL' (no ip found), skipping /etc/hosts configuration."
  exit
fi

if [ ! -z $URL_CORE ]; then
  entry="$IP $URL_CORE"
  echo $entry >> /etc/hosts
  echo "Added '$entry' to /etc/hosts"
fi

if [ ! -z $URL_IMS1 ]; then
  entry="$IP $URL_IMS1"
  echo $entry >> /etc/hosts
  echo "Added '$entry' to /etc/hosts"
fi

if [ ! -z $URL_IMS2 ]; then
  entry="$IP $URL_IMS2"
  echo $entry >> /etc/hosts
  echo "Added '$entry' to /etc/hosts"
fi

if [ ! -z $URL_UPLOAD ]; then
  entry="$IP $URL_UPLOAD"
  echo $entry >> /etc/hosts
  echo "Added '$entry' to /etc/hosts"
fi
