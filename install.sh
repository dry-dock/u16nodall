#!/bin/bash -e

#base image already has node and nvm installed globally...

echo "================= Updating global nodejs packages ==================="
npm install -g grunt-cli mocha vows phantomjs-prebuilt casperjs

echo "================ Installing selenium =================="
mkdir -p /srv
cd /srv && wget -nv http://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.1.jar

echo "=============== Installing bower globally ============="
npm install -g bower

for file in /u16nodall/version/*;
do
  $file
done
