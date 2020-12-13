#!/usr/bin/fish
# ##################
# HOW TO USE:
#
# clone this script into your *home* directory
# BE SURE to clone into the home directory
# otherwise, it won't work.

switch (uname)
    case Linux
            echo Hi Tux!
    case Darwin
            echo Hi Hexley!
    case FreeBSD NetBSD DragonFly
            echo Hi Beastie!
    case '*'
            echo Hi, stranger!
end

# Make backup of current config
if test -d ~/dotfiles/backup
  # old backup exists, delete it.
  rm -rf ./backup
end
mkdir ~/dotfiles/backup/

if test -d ~/.config/nvim # if the user has an nvim dir,
  echo "Backing up nvim config. Located at ~/dotfiles/backup/nvim"
	mv ~/.config/nvim -t ~/dotfiles/backup # then back that shit up
else
	echo "Not Found" # else he/she didn't have one already. NBD. 😵
end

if test -d ~/.config/fish # check for an existing fish config
  echo "Backing up old fish config. Located at ~/dotfiles/backup/fish"
	mv ~/.config/fish -t ~/dotfiles/backup # if there is, back it up.
else
	echo "Not Found" # or he/she didn't have one
end

if test -e ~/.zshrc # I think you get it.
	mv ~/.zshrc ~/dotfiles/backup/zshrc
end

# Make symlinks to dotfiles
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/fish ~/.config/fish
ln -sf ~/dotfiles/zshrc ~/.zshrc
