set -xg PATH $PATH $HOME/.emacs.d/bin/ /usr/share/nvm/init-nvm.sh  /home/sewdoh/.nvm/versions/node/v14.15.0/bin/ ~/.dotnet/tools /home/sewdoh/.nvm/versions/node/v14.15.0/lib/node_modules /home/sewdoh/.cargo/bin /home/sewdoh/.local/bin

starship init fish | source

alias ls="lsd"

set fish_greeting ""

alias MakeProject="touch .projectile"

alias configFish="nvim ~/.config/fish/config.fish"
alias configNvim="nvim ~/.config/nvim/init.vim"
alias reloadFish="source ~/.config/fish/config.fish"

function vterm_printf;
    if [ -n "$TMUX" ]
        # tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
        printf "\ePtmux;\e\e]%s\007\e\\" "$argv"
    else if string match -q -- "screen*" "$TERM"
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$argv"
    else
        printf "\e]%s\e\\" "$argv"
    end
end
