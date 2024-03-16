#!/usr/bin/bash

set -e

### Copies zsh files in place. Does a backup of existing files.

HOME="/home/$USER"

for file in ".zshrc" ".zsh_aliases" ".p10k.zsh"
do
    cp -ab "$file" "$HOME/$file"
done

cp -a ".zsh" "$HOME/.zsh"