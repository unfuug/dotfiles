# My dotfiles
Currently only for [zsh](https://www.zsh.org/).

## Requirements
- zsh
- [zoxide](https://github.com/ajeetdsouza/zoxide) (optional, for jumping)
- [fzf](https://github.com/junegunn/fzf) (optional, but recommended)

Install on Fedora:
```bash
sudo dnf install -y zsh zoxide fzf
```

## Usage
Clone and copy or symlink into your home directory. Or use the `setup-zsh.sh` that copies all zsh dotfiles in the home directory while doing a backup of existing ones.

```bash
chmod +x setup-zsh.sh && ./setup-zsh.sh
```