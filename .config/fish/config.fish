if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path ~/Applications/nodejs/bin
    fish_add_path ~/Applications/bin
    fish_add_path /usr/local/go/bin # go binaries
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
