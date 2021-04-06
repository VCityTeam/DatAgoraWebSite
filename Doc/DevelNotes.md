## Dealing with the deployment process
We need to push the generated artifacts to some httpd server. This upload will require some credentials that we cannot expose in the repository. This is precisely what travis encrypted variables are made for.

Thus full process (key encryption and script modifications) is documented below

 * generate a public/private ssh key-pair with `ssh-keygen` (on your desktop). In the following notes we'll assume that
    - `id_rsa.vcity_rict` denotes the private ssh key filename
    - `id_rsa.vcity_rict.pub` denotes the public ssh key filename
 * Place the public key on the server you with to give access to (i.e. the server on which the Travis build artifacts will be copied to)
 * Encrypt the private key for travis (builds): this encryption is realized on your desktop, refer to [this Travis documentation](https://docs.travis-ci.com/user/encryption-keys/), and the process boils down to
    - Prepare for encryption with [Travis CLI](https://docs.travis-ci.com/user/encryption-keys/#usage)
       ```  
       brew install travis (on OSX)
       travis endpoint --set-default --api-endpoint 'https://api.travis-ci.com/'   # Recommended (refer below)
       travis login --pro --github-token <your_github_token>
       travis whoami
       ```
       When the `travis whoami` fails then DON'T got any further and get this working first. For this refer e.g. [here](https://github.com/travis-ci/travis-ci/issues/6146) or [here](https://stackoverflow.com/questions/49365669/travis-ci-enterprise-travis-encrypt-after-successful-login-responds-not-logg/49365670#49365670) or maybe [there](https://docs.travis-ci.com/user/encryption-keys/#obtaining-the-public-keys)... If you proceed anyhow, the following `travis encrypt-file` will seem to proceed smoothly but will fail to register the decryption keys on the travis site.
    - Proceed with encryption per se:
       ```
       travis encrypt-file --pro -r VCityTeam/DatAgoraWebSite id_rsa.vcity_rict
       ```
       Note: you can ommit the slug (given with the `-r` argument) if you current working directory is a clone of the repository you are working on.
    - This last command has three effects:
        * it stores decryption keys on the Travis site: assert that those keys were properly stored by visiting the "environment variables" entry of the https://travis-ci.com/github/<your-organisation/<your-repo>/settings`
        * it **returns a decrypting command** (of the form `openssl aes-256-cbc <...> -in id_rsa.vcity_rict.enc -out id_rsa.vcity_rict -d`)
        * it produces a `id_rsa.vcity_rict.enc` file
    - Place the returned decrypting command (possibly in the `before_install` stage) in `<your_repo>/.travis.yml` script e.g.
       ```
       before_install:
          - openssl aes-256-cbc -K $encrypted_af65e16f4620_key -iv $encrypted_af65e16f4620_iv -in .ssh/id_rsa.vcity_rict.enc -out .ssh/id_rsa.vcity_rict -d
          - ls -al .ssh/id_rsa.vcity_rict          # Fixme: remove after debug
          - wc .ssh/id_rsa.vcity_rict             # Fixme: remove after debug
       ```
    - Commit the resulting encrypted file in your repository
       ```
        mkdir <your_repo>/.ssh/
        mv id_rsa.vcity_rict.enc <your_repo>/.ssh/ # Mind the .enc suffix
        ```
        and `git commit`
 * In your `<your_repo>/.travis.yml` script, write the deployment stage, e.g.
    ```
    deploy:
     - provider: script
         script: bash $TRAVIS_BUILD_DIR/.travis.deploy.sh
         skip_cleanup: true
         on:
            branch: master
    ```
     where the `.travis-deploy.sh` file holds something like
     ```
     #!/bin/bash
     set -x

     echo -e "\033[0;32mDeploying LirisProjet to rict...\033[0m"
     cd $TRAVIS_BUILD_DIR
     # FIXME: next line for debugging
     ssh -i $TRAVIS_BUILD_DIR/.ssh/id_rsa.vcity_rict connect.liris.cnrs.fr ls /home-projets/vcity/public_html
     scp -r -i $TRAVIS_BUILD_DIR/.ssh/id_rsa.vcity_rict <the_artifact_to_be_copied> connect.liris.cnrs.fr :<some_target_directory>     
     ```
