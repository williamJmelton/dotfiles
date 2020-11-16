#!/usr/bin/fish

# Make backup of current config
mkdir ./Backup/
mv ~/.config/nvim/ ~/Code/Dotfiles/Backup/nvim/
mv ~/.config/fish/ ~/Code/Dotfiles/Backup/fish/
mv ~/.zshrc ~/Code/Dotfiles/Backup/zshrc

# Make symlinks to dotfiles
ln -sf ~/Code/Dotfiles/nvim/ ~/.config/nvim;
ln -sf ~/Code/Dotfiles/fish/ ~/.config/fish;
ln -sf ~/Code/Dotfiles/zshrc ~/.zshrc
