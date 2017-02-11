#!/bin/bash

# Install command-line tools using Homebrew

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we're using the latest Homebrew
brew update

# Upgrade installed formulae
brew upgrade

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

brew install coreutils
brew install moreutils
brew install findutils
brew install entr
brew install wget
brew install tree
brew install the_silver_searcher
brew install fzf
brew install git
brew install tmux
brew install node
brew install zsh
brew install nvm
brew install youtube-dl

brew cleanup
