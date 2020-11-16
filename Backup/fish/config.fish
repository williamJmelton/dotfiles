set -xg PATH $PATH $HOME/.emacs.d/bin/ /usr/share/nvm/init-nvm.sh  /home/sewdoh/.nvm/versions/node/v14.15.0/bin/ ~/.dotnet/tools

set fish_plugins autojump vi-mode


alias ls="lsd"

alias configFish="nvim ~/.config/fish/config.fish"
alias configNvim="nvim ~/.config/nvim/init.vim"
alias reloadFish="source ~/.config/fish/config.fish"
alias configAlacritty="nvim ~/.config/alacritty/alacritty.yml"

starship init fish | source
