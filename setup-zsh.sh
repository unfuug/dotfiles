#!/usr/bin/bash

### Copies zsh files in place. Does a backup of existing files.

HOME="/home/$USER"

for file in ".zsh" ".zsh_aliases" ".p10k.zsh"
do
    if [[ -f "$HOME/$file" ]]; then
        cp -ab "$file" "$HOME/$file"
    fi
done 

if [[ -d "$HOME/.zsh" ]]; then
    cp -ab ".zsh" "$HOME/.zsh"
fi