#!/bin/bash

# Start MongoDB
service mongodb start

# Lerna bootstrap
yarn install
echo 'y' | yarn lerna clean
yarn lerna bootstrap

# Building packages
yarn lerna run build --scope=@courselit/rich-text