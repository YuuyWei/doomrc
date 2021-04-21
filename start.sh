#!/usr/bin/env bash
set -euo pipefail

# install needed softwares
yay -S emacs neovim librime ttf-sarasa-gothic chromium ripgrep fd clipboard net-tools xclipboard librime
yay -R firefox

# install doom emacs
rm .emacs.d -rf
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
cd .emacs.d
./bin/doom install

# config network
ip route show

# install VMModule
mount -o remount,exec /dev/sr0

# install flypy
git clone https://github.com/zecy/flypy_double.git ~/.emacs.d/.local/etc/rime/flypy
mv flypy/** .
