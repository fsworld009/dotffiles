#!/bin/bash

DOTFILES="$HOME/dotfiles"
pushd $HOME > /dev/null

# fish
mkdir -p .config
mkdir -p .config/fish
rm -f .config/fish/config.fish
ln -s $DOTFILES/fish_config.fish .config/fish/config.fish

# starship
rm -f .config/starship.toml
ln -s $DOTFILES/starship.toml .config/starship.toml

# tmux
rm -f .tmux.conf
ln -s "$DOTFILES/.tmux/.tmux.conf" .tmux.conf
rm -f .tmux.conf.local
ln -s "$DOTFILES/.tmux.conf.local" .tmux.conf.local
chmod 755 $DOTFILES/bin/xclip

# .gitconfig
rm -f .gitconfig
ln -s "$DOTFILES/.gitconfig" .gitconfig

# npmrc
# do copy instead of ln, since npm login credentials are saved in this file
rm -f .npmrc
cp "$DOTFILES/.npmrc" .npmrc

popd > /dev/null
