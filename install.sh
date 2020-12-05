#!/usr/bin/bash

if [ $USER == "root" ]; then
  echo "We do not recommend running install.sh as root"
  exit
fi

if [ -f "/usr/bin/hentai" ]; then
  echo "Hentai is already installed"
  exit
fi

if [ ! -f "/usr/bin/meson" ] || [ ! -f "/usr/bin/ninja" ]; then
  echo "Meson and Ninja were not found"
  exit
fi

if [ ! -f "./build/hentai" ]; then
  echo "'\033[0;33mBuilding..."
  /usr/bin/meson build
  cd ./build
  /usr/bin/ninja
  cd ..
fi

sudo cp ./build/hentai /usr/bin/hentai
