#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/$1/install.sh | bash

source ~/.nvm/nvm.sh
source ~/.bashrc

nvm --version

nvm install $2

npm -v
node -v
