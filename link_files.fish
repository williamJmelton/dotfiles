#!/usr/bin/fish
# ##################
# HOW TO USE:
#
# clone this script into your *home* directory
# BE SURE to clone into the home directory
# otherwise, it won't work.

# Make backup of current config
if test -d ./Backup/
  # old backup exists, delete it.
  rm -rf ./Backup
end
mkdir ./Backup/

if test -d ~/Dotfiles/.config/nvim/ # if the user has an nvim dir,
	mv ~/.config/nvim/ -t ./Backup/ # then back that shit up
else
	echo "Not Found" # else he/she didn't have one already. NBD. 😵
end

if test -d ~/.config/fish/ # check for an existing fish config
	mv ~/.config/fish/ -t ./Backup/ # if there is, back it up.
else
	echo "Not Found" # or he/she didn't have one
end

if test -e ~/.zshrc # I think you get it.
	mv ~/.zshrc ./Backup/zshrc
end

# Make symlinks to dotfiles
ln -sf ./nvim/ ~/.config/nvim/
ln -sf ./fish/ ~/.config/fish/
ln -sf ./zshrc ~/.zshrc
