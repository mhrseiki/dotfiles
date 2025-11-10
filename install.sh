#!/bin/bash

set -u

# Navigate to Home Directory
cd $HOME || exit 1

# Install Xcode
xcode-select --install

# Clone Oh My Zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.config/ohmyzsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off
brew --version

# Install Fonts
brew install --cask font-meslo-lg-nerd-font

# Install Apps
brew install --cask wezterm zen zed

# Install Essentials
brew install zsh zsh-autosuggestions zsh-syntax-highlighting stow git curl
brew install eza zoxide btop fastfetch

# Install Development Tools
brew install ruby

# Install ZSH Theme
brew install powerlevel10k

# Clone Dotfiles
git clone https://github.com/mhrseiki/dotfiles.git $HOME/Development/dotfiles

# Navigate to Dotfiles Directory
cd $HOME/Development/dotfiles || exit 1

# Stow Personal Configs
stow -t ~ zsh wezterm zed git btop

echo "Installation Complete."
zsh
