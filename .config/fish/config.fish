if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path ~/Applications/nodejs/bin
    fish_add_path ~/Applications/bin
    fish_add_path /usr/local/go/bin # go binaries
    fish_add_path $HOME/go/bin # go binaries
end


set -g fish_greeting


# Enable Vi keybindings
fish_vi_key_bindings

bind -M insert \cf 'forward-char' # ctrl-f for autocomplete

# dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
