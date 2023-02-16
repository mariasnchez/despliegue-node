#!/bin/bash -xe
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
. ~/.bashrc
nvm install --lts
ln -sf "SNVM_DIR/versions/node/$(nvm version)/bin/node" "/usr/local/bin/node"
ln -sf "SNVM_DIR/versions/node/$(nvm version)/bin/npm" "/usr/local/bin/npm"
mkdir -p /home/ubuntu/app/release/logs