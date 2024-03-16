# Auther: Lutz Warnecke

# Updates the git cloned zsh plugins
zsh-update() {
    local PLUGINS=($@)

    for p in $PLUGINS; do
      echo "Updating $p..."
      git -C "$HOME/.zsh/$p" pull origin master |& tail -1;
    done

    return 0
}
