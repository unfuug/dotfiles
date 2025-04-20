# My dotfiles
Managed by [chezmoi](https://www.chezmoi.io/).

## Requirements
- [chezmoi](https://www.chezmoi.io/)
- zsh
- [zoxide](https://github.com/ajeetdsouza/zoxide) (optional, for jumping)
- [fzf](https://github.com/junegunn/fzf) (optional, but recommended)

Install on Fedora:
```bash
sudo dnf install -y zsh zoxide fzf
```
For chezmoi look [here](https://www.chezmoi.io/install/).

## Usage
In general run
```bash
chezmoi init https://github.com/unfuug/dotfiles.git
```
followed by
```bash
chezmoi apply -v
```
See also [chezmois quick start guide](https://www.chezmoi.io/quick-start/)

---
Some files in this repo are encrypted (e.g. ssh keys), you might need to clone the repo manually and delete them, before adding the rest to chezmoi. In this case run
```bash
chezmoi init
```
to create an empty local repository, clone this repo
```bash
cd /tmp && git clone https://github.com/unfuug/dotfiles.git && cd dotfiles
```
delete all encrypted files
```bash
find -name "encrypted_*" -delete
```
and copy the remaining files to your chezmoi repo:
```bash
cp ./* $(chezmoi source-path)/
```
Now you can apply the files via:
```bash
chezmoi apply -v
```

Don't forget to commit the new files to your own local chezmoi repo
```bash
chezmoi cd
git add .
git commit -m "Initial commit"
```
and consider setting up your own GitHub repo for them.

---
To permanently change your shell to zsh, run:
```bash
chsh -s $(which zsh) <your username>
```
