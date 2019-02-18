#!/bin/bash -e

NODE_VERSION=10.15.1
NPM_VERSION=6.8.0
echo "=============== Installing Node $NODE_VERSION ============="
. /root/.nvm/nvm.sh && nvm install $NODE_VERSION
npm install npm@$NPM_VERSION -g
nvm alias default $NODE_VERSION
