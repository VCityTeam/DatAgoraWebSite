#!/bin/bash
set -x

echo -e "\033[0;32mDeploying LirisProjet to rict...\033[0m"
cd $TRAVIS_BUILD_DIR
ssh -i $TRAVIS_BUILD_DIR/.ssh/id_rsa.vcity_rict.enc connect.liris.cnrs.fr ls /home-projets/vcity/public_html/DatAgora
