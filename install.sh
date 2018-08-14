#!/bin/bash -e

#base image already has node and nvm installed globally...

echo "================= Updating global nodejs packages ==================="
npm install -g \
  grunt-cli@1.2.0 \
  mocha@5.0.5 \
  vows@0.8.2 \
  casperjs@1.1.4 \
  bower@1.8.4

npm install -g --unsafe-perm \
  phantomjs-prebuilt@2.1.16 


echo "================ Installing selenium =================="
mkdir -p /srv
cd /srv && wget -nv https://selenium-release.storage.googleapis.com/3.13/selenium-server-standalone-3.14.0.jar

for file in /u16nodall/version/*;
do
  $file
done
