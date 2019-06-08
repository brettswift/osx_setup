#!/usr/bin/env bash 

echo "install aws cli "
pip3 install awscli --upgrade --user

echo "installing nvm and node"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

echo "install the aws sam cli "
brew tap aws/tap
brew install aws-sam-cli

