#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# cli tools
brew install ack
brew install tree
brew install wget

# development server setup
#brew install nginx
#brew install dnsmasq

echo "Installing tools packages..."
# development tools
brew install git
brew install git-flow
brew install hub
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install nvm
brew install z
brew install markdown
brew install midnight-commander

brew install vim

brew update && brew cleanup

# install productivity software for 5Minds
echo "Installing application packages..."
brew cask install microsoft-office
brew cask install google-chrome
brew cask install chrome-devtools
brew cask install sublime-text
brew cask install firefox-de
brew cask install slack
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install gpgtools
brew install homebrew/dupes/openssh
brew cask install iterm2
brew install zsh
brew cask install alfred
brew cask install caffeine
brew cask install vmware-fusion
brew cask install pgadmin3
brew cask install sourcetree
brew cask install teamviewer

# install neovim
brew install neovim/neovim/neovim

# Productivity stuff
brew install Caskroom/cask/alfred
brew install pandoc
brew install htop-osx
brew install sphinx
brew install zsh-completions
