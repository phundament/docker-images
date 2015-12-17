#!/usr/bin/env bash

git submodule update --init  
ls -la  
  
set -e
set -v
  
export COMPOSE_HTTP_TIMEOUT=120

make -f Makefile test

exit 0