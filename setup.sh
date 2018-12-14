#!/usr/bin/env bash
set -euo pipefail

# set dotfiles path
dotfiles=$HOME/.dotfiles


# use colors on terminal
tput=$(which tput)
if [ -n "$tput" ]; then
  ncolors=$($tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
  RED="$(tput setaf 1)"
  GREEN="$(tput setaf 2)"
  YELLOW="$(tput setaf 3)"
  BLUE="$(tput setaf 4)"
  BOLD="$(tput bold)"
  NORMAL="$(tput sgr0)"
else
  RED=""
  GREEN=""
  YELLOW=""
  BLUE=""
  BOLD=""
  NORMAL=""
fi


### functions
# info: output terminal green
info() { 
  printf "${GREEN}"
  echo -n "  info  "
  printf "${NORMAL}"
  echo "$1"
}

# error: output terminal red
error() {
  printf "${RED}"
  echo -n "  error "
  printf "${NORMAL}"
  echo "$1"
}

# warn: output terminal yellow
warn() {
  printf "${YELLOW}"
  echo -n "  warn  "
  printf "${NORMAL}"
  echo "$1"
}

# log: out put termial normal
log() { 
  echo "  $1" 
}


# fix sed command diff between GNU & BSD
if sed --version 2>/dev/null | grep -q GNU; then
  alias sedi='sed -i '
else
  alias sedi='sed -i "" '
fi


# create symlink
symlink() {
  [ -e "$2" ] || ln -sf "$1" "$2"
}

## create symbolic link
echo ""
info "Creating symbolic link..."
echo ""

# Vim
info "vimrc"
symlink "$dotfiles/.vimrc" "$HOME/.vimrc"

# Neovim
info "config about neovim"
mkdir -p $HOME/.config/nvim
symlink "$dotfiles/.config/nvim" "$HOME/.config/nvim"

