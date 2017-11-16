#!/bin/bash
rsync -Paz . www.noenieto.com:~/webapps/htdocs/ --exclude-from=.rsyncexclude --delete-excluded
