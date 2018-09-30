#!/usr/bin/env bash

if [[ -n "$1" ]]; then
    cp -i resources/Windstead.json Windstead.json
else
    cp -i resources/Windstead.yaml Windstead.yaml
fi

echo "Windstead initialized!"
