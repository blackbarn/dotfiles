#!/usr/bin/env bash

packages=(
    bower
    gulp
    pm2
)

for p in "${packages[@]}"
do
    if ! npm ls -g --depth=0 --parseable | grep -q $p; then
        npm install -g $p;
    fi
done
