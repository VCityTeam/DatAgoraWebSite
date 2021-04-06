#!/bin/bash
set -x

echo -e "\033[0;32mDeploying DatAgora website to liris web host...\033[0m"
cd $TRAVIS_BUILD_DIR/Website

# Make sure not to leave previously uploaded content by wiping out all 
# previous uploaded content:
ssh -oStrictHostKeyChecking=no -i $TRAVIS_BUILD_DIR/.ssh/id_rsa.vcity_rict eboix@connect.liris.cnrs.fr rm -fr /home-projets/vcity/public_html/DatAgora

scp -r -oStrictHostKeyChecking=no -i $TRAVIS_BUILD_DIR/.ssh/id_rsa.vcity_rict public/ eboix@connect.liris.cnrs.fr:/home-projets/vcity/public_html/DatAgora
