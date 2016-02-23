#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
#sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
brew install coreutils
echo "Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`."
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install woff2

# Install other useful binaries.
brew install git
brew install git-lfs
brew install node
#brew install imagemagick --with-webp
#brew install lua
#brew install lynx
#brew install p7zip
#brew install pigz
#brew install pv
#brew install rename
#brew install rhino
#brew install speedtest_cli
#brew install ssh-copy-id
brew install tree
brew install webkit2png
#brew install zopfli

# Install native apps
brew install caskroom/cask/brew-cask

brew tap caskroom/versions
brew cask install alfred
brew cask install atom
brew cask install google-chrome
brew cask install charles
brew cask install dash
brew cask install encryptr
brew cask install evernote
brew cask install firefox
brew cask install iterm2
brew cask install jumpcut
brew cask install slack
brew cask install spectacle

# Remove outdated versions from the cellar.
brew cleanup
