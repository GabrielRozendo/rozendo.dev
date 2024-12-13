#!/bin/sh

# chmod +x deploy.sh

USER=root
HOST=rozendo.dev
DIR=~/www

hugo && rsync -avzh -P --delete -e "ssh -i ~/.ssh/id_rsa_racknerd" public/ ${USER}@${HOST}:${DIR} 
# this will delete everything on the server that's not in the local public folder 

exit 0
