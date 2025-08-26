#!/bin/sh

#This script deploys my website from its current location to my webserver

#Make sure hugo is outputting to the right publish dir. consider checking config.toml in the main site directory
USER=kyle
HOST=ultima2
NEWDIR=/home/kyle/Documents/hugo/www/ #destination folder
OLDDIR=/home/kyle/Nextcloud/Documents/Code/Hugo/ML/publish/ # source folder

ICO_OLD_PATH=/home/kyle/Nextcloud/Documents/Code/Hugo/ML/static/favicon.ico
ICO_NEW_PATH=/home/kyle/Nextcloud/Documents/Code/Hugo/ML/publish/favicon.ico
#echo ${OLDDIR} ${USER}@${HOST}:${NEWDIR}
hugo  --gc --minify --cleanDestinationDir #make website (SHELL SCRIPT MUST BE RUN FROM WEBSITE ROOT DIR)
rsync ${ICO_OLD_PATH} ${ICO_NEW_PATH} #Copy over the icon because my Hugo site keeps replacing it with the theme's ico
rsync -rvz --delete ${OLDDIR} ${USER}@${HOST}:${NEWDIR}

exit 0
