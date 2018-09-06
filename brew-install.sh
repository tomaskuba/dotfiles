#!/bin/bash
##############################################################################
# Install Homebrew and necessary tools via Homebrew
##############################################################################

# Install Homebrew
if ! type "$brew" > /dev/null; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew doctor
brew install bash bash-completion git mc

brew install python
pip3 install --upgrade pip setuptools wheel
pip3 install pygments

