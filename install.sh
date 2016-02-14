#!/bin/bash

echo "Installing dotfiles"

# oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    xcode-select --install
    echo "Running on OSX"

    echo "Brewing all the things"
    source install/brew.sh

    echo "Updating OSX settings"
    source install/osx.sh

    echo "Installing node (from nvm)"
    source install/nvm.sh
fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

echo "Installing additional stuff"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
