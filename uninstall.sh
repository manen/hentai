#!/usr/bin/bash

if [ ! -f "/usr/bin/hentai" ]; then
  echo "Hentai is not installed"
  exit
fi

sudo rm /usr/bin/hentai
