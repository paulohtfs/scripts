#!/bin/sh
## Iinstalling Abnt2 with Latex
mkdir $HOME/workspace/install_repo/abntex2
intall_repo="$HOME/workspace/install_repo/abntex2"
git clone https://github.com/abntex/abntex2.git $HOME/workspace/install_repo/abntex2
cd $HOME/workspace/install_repo/abntex2
sudo make install
