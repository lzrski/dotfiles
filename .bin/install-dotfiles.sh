#! /usr/bin/env sh

origin="git@github.com:lzrski/dotfiles.git"
local=".dotfiles.git"

# Abort if dotfiles are already installed
if [ -d  "$HOME/$local" ]; then
  echo "Directory '$HOME/$local' already exists. If you want to reinstall dotfiles, remove it and call this script again. Aborting."
  exit 1
fi

# Make sure dependencies are installed
if [ ! -d  "$HOME/.oh-my-zsh" ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
fi
# TODO: Fonts, oh-my-zsh plugins etc.

# Setup dotfiles command
echo "$local" > .gitignore
git clone --bare "$origin" "$HOME/$local"
alias dotfiles=git --git-dir="$HOME/$local" --work-tree="$HOME"
dotfiles config --local status.showUntrackedFiles no

# Install actual files
echo "Installing dotfiles from $origin to "$HOME/$local". Any conflicting files will be stashed. To restore run:"
echo
echo "    dotfiles stash pop"
echo

dotfiles stash
dotfiles checkout
