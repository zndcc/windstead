#!/usr/bin/env bash

if [[ -n "$1" ]]; then
    cp -i resources/Winstead.json Winstead.json
else
    cp -i resources/Winstead.yaml Winstead.yaml
fi

echo "Winstead initialized!"
