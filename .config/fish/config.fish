if status is-interactive
    # Commands to run in interactive sessions can go here
    fnm env --use-on-cd | source # automatically change node version when entering a folder with .nvmrc
    fish_add_path $HOME/go/bin # go binaries
end


set -g fish_greeting

set -x BROWSER firefox
set -x EDITOR nvim
set -x VISUAL nvim
set -x GOPATH $HOME/go


fish_default_key_bindings
bind -M default \cf 'forward-char' # ctrl-f for autocomplete

# dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
