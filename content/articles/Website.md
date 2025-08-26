---
title: "Website creation"
date: 2022-03-22T12:00:00-05:00
---

I created this website to hold onto important things I've found on the internet, and to more generally carve out my own little spot. I hope you like it!
On the bottom left are contact pages so you can get a hold of me if need be.

This website uses Hugo to generate the HTML because I dont want to do it myself, and it uses a theme called "Digital Garden" to make it look nice, expecially for phones.
I run this site from an NGINX docker container connected to an NGINX reverse proxy for managing the subdomains I host.


Here is the script I use to deploy my website after I make changes:

```
USER=kyle
HOST=[--]
NEWDIR=[--]
OLDDIR=[--]
ICO_OLD_DIR=[--]
ICO_NEW_DIR=[--]
#echo ${OLDDIR} ${USER}@${HOST}:${NEWDIR}
hugo #make website
rsync ${ICO_OLD_DIR} ${ICO_NEW_DIR} #Copy over the icon because my Hugo site keeps replacing it with the theme's ico
rsync -rvz --delete ${OLDDIR} ${USER}@${HOST}:${NEWDIR}
exit 0
```