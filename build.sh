#!/bin/bash

git submodule update --init
bundle install
npm install -g grunt-cli
npm install
grunt init

docker build -t thomaswelton/ghost .
