#!/bin/bash

# install-pyenv.sh

sudo apt update
sudo apt install make build-essential libssl-dev zlib1g-dev -y
sudo apt install libbz2-dev libreadline-dev libsqlite3-dev curl git -y
sudo apt install libncursesw5-dev xz-utils tk-dev libxml2-dev -y 
sudo apt install libxmlsec1-dev libffi-dev liblzma-dev -y
curl https://pyenv.run | bash

export PYENV_ROOT="$HOME/.pyenv" [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
