# On a new pc :

## For nvim :

### Arch :

- Install : `curl git neovim fzf bat ripgrep unzip gcc xclip`
- launch nvim and install the needed lsp servers with `Mason`, install parsers with `TSInstall language`

### Debian based :

- install same deps as Arch but for nvim get the latest appimage or tarball from: https://github.com/neovim/neovim/releases
- install lsps with `Mason`, parsers with `TSInstall`

## WSL stuff :

- Install Alacritty and a nerdfont using scoop :
    - Alacritty :
    ```
    scoop bucket add extras
    scoop install extras/alacritty
    ```
    - SauceCodePro :
    ```
    scoop bucket add nerd-fonts
    scoop install nerd-fonts/SourceCodePro-NF-Mono
    ```

- paste this to `C:\Users\<something>\AppData\Roaming\alacritty\alacritty.toml` :

```toml
[font]
size = 13.0

[font.normal]
family = "SauceCodePro Nerd Font Mono"
style = "Regular"

[font.bold]
family = "SauceCodePro Nerd Font Mono"
style = "Bold"

[font.italic]
family = "SauceCodePro Nerd Font Mono"
style = "Italic"

[cursor]
style = { shape = "Block", blinking = "On" }
unfocused_hollow = true


[window]
opacity = 1.0
padding = { x = 5, y = 5 }
dynamic_title = true

[window.dimensions]
columns = 120
lines = 35

[scrolling]
history = 10000
multiplier = 3


# Theme: Tokyo Night Storm
[colors.primary]
background = '#1a1b26'
foreground = '#c0caf5'

[colors.normal]
black   = '#32344a'
red     = '#ff718a'
green   = '#b0ef8a'
yellow  = '#ffc777'
blue    = '#7aa2f7'
magenta = '#d399ff'
cyan    = '#83eaff'
white   = '#878ca8'

[colors.bright]
black   = '#50567c'
red     = '#ff7a93'
green   = '#c8ff99'
yellow  = '#ffb675'
blue    = '#83b2ff'
magenta = '#d39fff'
cyan    = '#9af0ff'
white   = '#c8cde7'

[terminal]
shell = { program = "wsl", args = ["-d", "Ubuntu", "--cd", "~"] }
```
