#!/bin/bash

# install-pyenv.sh

sudo apt install make build-essential libssl-dev zlib1g-dev -y
sudo apt install libbz2-dev libreadline-dev libsqlite3-dev wget -y
sudo apt install curl llvm libncurses5-dev libncursesw5-dev -y
sudo apt install xz-utils tk-dev libffi-dev liblzma-dev -y
sudo apt install python-openssl git -y

curl https://pyenv.run | bash

export PYENV_ROOT="$HOME/.pyenv" [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
