if status is-interactive
    # Commands to run in interactive sessions can go here
    fnm env --use-on-cd | source # automatically change node version when entering a folder with .nvmrc
    fish_add_path $HOME/go/bin # go binaries
    fish_add_path $HOME/.local/bin/exercism # exercism cli
end

set -g fish_greeting
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
set -x BROWSER firefox
set -x EDITOR nvim
set -x VISUAL nvim
set -x GOPATH $HOME/go


fish_default_key_bindings
bind -M default \cf 'forward-char' # ctrl-f for autocomplete

# dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set --export MANPAGER "nvim +Man!"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/elyazid/google-cloud-sdk/path.fish.inc' ]; . '/home/elyazid/google-cloud-sdk/path.fish.inc'; end

# opencode
fish_add_path /home/elyazid/.opencode/bin
