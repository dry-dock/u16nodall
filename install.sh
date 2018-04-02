#!/bin/bash -e

#base image already has node and nvm installed globally...

echo "================= Updating global nodejs packages ==================="
npm install -g \
  grunt-cli@1.2.0 \
  mocha@5.0.5 \
  vows@0.8.1 \
  phantomjs-prebuilt@2.1.15\
  casperjs@1.1.4 \
  bower@1.8.4


echo "================ Installing selenium =================="
mkdir -p /srv
cd /srv && wget -nv https://selenium-release.storage.googleapis.com/3.11/selenium-server-standalone-3.11.0.jar

for file in /u16nodall/version/*;
do
  $file
done
