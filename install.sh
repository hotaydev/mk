#!/usr/bin/env sh

## Check if .zshrc file, from zsh is found in the home directory.
if [ ! -f ~/.zshrc ]; then
  echo "This script only works on ZSH. Give it a try."
  echo "> https://ohmyz.sh/"
  exit 1
fi

## Adds the `mk` shortcut to the ~/.zshrc file
echo "
# Used to create a directory and enter it
mk() {
    mkdir -p \"\$1\" && cd \"\$1\"
}
" >> ~/.zshrc

## Success exit
echo "Installed successfully! The next time you load your terminal, the mk command will be available."
echo ""
echo "Try using it with: mk <some folder>"
exit 0
