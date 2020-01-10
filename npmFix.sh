#!/usr/bin/env bash

# Delete existing node_modules directory in project folder
rm -rf /var/www/html/m150/quiz/node_modules

# Download precompiled node packages
curl -o /home/webadmin/node_modules.tar.gz 'https://m150.gibz-informatik.ch/node_modules.tar.gz'

# Untar (extract) archive into project directory
tar -C /var/www/html/m150/quiz/ -xzvf /home/webadmin/node_modules.tar.gz