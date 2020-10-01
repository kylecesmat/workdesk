#!/bin/bash

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# mac app store interface
brew install mas
brew tap homebrew/cask-fonts

# tools
xcode-select --install
sudo gem install cocoapods
brew install git
brew install node
brew install nvm
brew install zsh-completions
brew install awscli
brew install gh

# apps
brew cask install 1password
brew cask install docker
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install kap
brew cask install notion
brew cask install postman
brew cask install sequel-pro
brew cask install sketch
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install virtualbox
brew cask install visual-studio-code
mas install 497799835 # Xcode
sudo xcode-select -s /Applications/Xcode.app
sudo xcodebuild -license
brew cask install yarn
brew cask install zoom

# Fonts
brew cask install font-input
brew cask install font-fira-code
