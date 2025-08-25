# Neovim Configuration Cheatsheet

## Core Plugins

| Plugin                     | Description                                                        |
| -------------------------- | ------------------------------------------------------------------ |
| **`lazy.nvim`**            | Plugin manager for efficient loading                               |
| **`tokyonight.nvim`**      | Colorscheme (`tokyonight-storm` theme)                             |
| **`nvim-tree.lua`**        | File explorer sidebar with icon support                            |
| **`nvim-web-devicons`**    | File type icons for nvim-tree and lualine                          |
| **`lualine.nvim`**         | Status line with tokyonight theme integration                      |
| **`mason.nvim`**           | Package manager for LSP servers, linters, formatters               |
| **`mason-lspconfig`**      | Bridges Mason with nvim-lspconfig                                  |
| **`nvim-lspconfig`**       | Quickstart configs for Neovim's built-in LSP client                |
| **`nvim-cmp`**             | Autocompletion engine with multiple sources                        |
| **`cmp-nvim-lsp`**         | LSP completion source for nvim-cmp                                 |
| **`cmp-buffer`**           | Buffer text completion source                                      |
| **`cmp-path`**             | File system path completion source                                 |
| **`LuaSnip`**              | Snippet engine for nvim-cmp                                        |
| **`cmp_luasnip`**          | LuaSnip completion source                                          |
| **`nvim-autopairs`**       | Automatic bracket and quote closing with treesitter integration    |
| **`nvim-treesitter`**      | Advanced syntax highlighting, indentation, and code parsing        |
| **`telescope.nvim`**       | Fuzzy finder for files, text, buffers, and more                    |
| **`render-markdown.nvim`** | Real-time markdown rendering with enhanced syntax and features     |
| **`plenary.nvim`**         | Lua utility library (dependency for telescope and render-markdown) |

---

## Keymaps

### General & Navigation

| Key           | Mode   | Action                     | Description                           |
| ------------- | ------ | -------------------------- | ------------------------------------- |
| `<Space>`     | N/A    | Leader key                 | Set as both leader and local leader   |
| `<C-h/j/k/l>` | Normal | Navigate between windows   | Custom mappings for window navigation |
| `<leader>nh`  | Normal | Clear search highlights    | Removes search highlighting           |
| `à`           | Insert | Move cursor right (AZERTY) | AZERTY-friendly cursor movement       |
| `ç`           | Insert | Move cursor left (AZERTY)  | AZERTY-friendly cursor movement       |

### Window & Split Management

| Key          | Mode   | Action                    | Description                |
| ------------ | ------ | ------------------------- | -------------------------- |
| `<leader>sv` | Normal | Split window vertically   | Create vertical split      |
| `<leader>sh` | Normal | Split window horizontally | Create horizontal split    |
| `<leader>se` | Normal | Make splits equal size    | Equalize all window sizes  |
| `<leader>sx` | Normal | Close current split       | Close current split window |

### Tab Management

| Key          | Mode   | Action             | Description              |
| ------------ | ------ | ------------------ | ------------------------ |
| `<leader>to` | Normal | Open new tab       | Create new tab           |
| `<leader>tx` | Normal | Close current tab  | Close current tab        |
| `<leader>tn` | Normal | Go to next tab     | Navigate to next tab     |
| `<leader>tp` | Normal | Go to previous tab | Navigate to previous tab |

### File & Project Management (Telescope)

| Key          | Mode   | Action                                       | Description                      |
| ------------ | ------ | -------------------------------------------- | -------------------------------- |
| `<leader>e`  | Normal | Toggle file explorer (`nvim-tree`)           | Opens/closes the file explorer   |
| `<leader>ff` | Normal | Find files in the project                    | Telescope file finder            |
| `<leader>fg` | Normal | Search for a string in all files (Live Grep) | Live grep search across project  |
| `<leader>fb` | Normal | List and switch between open buffers         | Buffer switcher                  |
| `<leader>fh` | Normal | Search help tags                             | Search Neovim help documentation |
| `<leader>fr` | Normal | Find recently opened files                   | Recent files (oldfiles)          |

### Terminal Management

| Key          | Mode     | Action                            | Description                          |
| ------------ | -------- | --------------------------------- | ------------------------------------ |
| `<leader>tt` | Normal   | Toggle terminal in current window | Opens terminal in current window     |
| `<leader>ts` | Normal   | Open terminal in horizontal split | Opens fish shell in horizontal split |
| `<Esc><Esc>` | Terminal | Exit terminal mode                | Return to normal mode from terminal  |

### LSP & Diagnostics

| Key          | Mode   | Action                                 | Description                              |
| ------------ | ------ | -------------------------------------- | ---------------------------------------- |
| `gd`         | Normal | Go to definition                       | Jump to symbol definition                |
| `gr`         | Normal | Go to references                       | Show all references to symbol            |
| `K`          | Normal | Show hover information (documentation) | LSP hover documentation                  |
| `<leader>ca` | Normal | Show code actions                      | Available code actions at cursor         |
| `<leader>s`  | Normal | Show signature help                    | Function signature information           |
| `<C-h>`      | Insert | Show signature help                    | Function signature in insert mode        |
| `<leader>q`  | Normal | Show all diagnostics in a list         | Location list with all diagnostics       |
| `<leader>à`  | Normal | Go to the next diagnostic              | Navigate to next diagnostic (AZERTY)     |
| `<leader>ç`  | Normal | Go to the previous diagnostic          | Navigate to previous diagnostic (AZERTY) |
| `<leader>é`  | Normal | Go to the next **error**               | Navigate to next error only (AZERTY)     |
| `<leader>è`  | Normal | Go to the previous **error**           | Navigate to previous error only (AZERTY) |

### Autocompletion (`nvim-cmp`)

| Key         | Mode   | Action                            | Description                              |
| ----------- | ------ | --------------------------------- | ---------------------------------------- |
| `<C-Space>` | Insert | Trigger completion menu           | Manually trigger completion              |
| `<CR>`      | Insert | Confirm selected completion       | Accept completion or new line if none    |
| `<Tab>`     | Insert | Select next item / expand snippet | Navigate down or expand/jump in snippets |
| `<S-Tab>`   | Insert | Select previous item / jump back  | Navigate up or jump back in snippets     |

### Markdown Rendering (`render-markdown.nvim`)

| Key          | Mode   | Action                             | Description                         |
| ------------ | ------ | ---------------------------------- | ----------------------------------- |
| `<leader>mt` | Normal | Toggle markdown rendering globally | Toggle rendering for all buffers    |
| `<leader>mb` | Normal | Toggle markdown rendering (buffer) | Toggle rendering for current buffer |
| `<leader>me` | Normal | Enable markdown rendering          | Enable rendering                    |
| `<leader>md` | Normal | Disable markdown rendering         | Disable rendering                   |
| `<leader>m+` | Normal | Expand markdown margins            | Expand anti-conceal margins         |
| `<leader>m-` | Normal | Contract markdown margins          | Contract anti-conceal margins       |
| `<leader>mc` | Normal | Show markdown config               | Display configuration differences   |
| `<leader>mx` | Normal | Debug markdown rendering           | Debug rendering on current line     |

### Default Neovim Keymaps (Essential Built-ins)

#### Movement & Navigation

| Key         | Mode   | Action                  | Description                           |
| ----------- | ------ | ----------------------- | ------------------------------------- |
| `h/j/k/l`   | Normal | Basic movement          | Left/Down/Up/Right                    |
| `w/W`       | Normal | Word forward            | Move to next word/WORD                |
| `b/B`       | Normal | Word backward           | Move to previous word/WORD            |
| `e/E`       | Normal | End of word             | Move to end of word/WORD              |
| `ge/gE`     | Normal | End of previous word    | Move to end of previous word/WORD     |
| `0`         | Normal | Beginning of line       | Move to first character of line       |
| `^`         | Normal | First non-blank         | Move to first non-whitespace char     |
| `$`         | Normal | End of line             | Move to end of line                   |
| `g_`        | Normal | Last non-blank          | Move to last non-whitespace char      |
| `gg`        | Normal | Top of file             | Go to first line                      |
| `G`         | Normal | End of file             | Go to last line                       |
| `{number}G` | Normal | Go to line number       | Jump to specific line                 |
| `%`         | Normal | Matching bracket        | Jump to matching bracket/paren        |
| `f{char}`   | Normal | Find character forward  | Find next character in line           |
| `F{char}`   | Normal | Find character backward | Find previous character in line       |
| `t{char}`   | Normal | Till character forward  | Move till next character              |
| `T{char}`   | Normal | Till character backward | Move till previous character          |
| `;`         | Normal | Repeat f/t motion       | Repeat last f/F/t/T motion            |
| `,`         | Normal | Reverse f/t motion      | Reverse last f/F/t/T motion           |
| `<C-d>`     | Normal | Scroll down half page   | Move down half screen                 |
| `<C-u>`     | Normal | Scroll up half page     | Move up half screen                   |
| `<C-f>`     | Normal | Scroll down full page   | Move down full screen                 |
| `<C-b>`     | Normal | Scroll up full page     | Move up full screen                   |
| `zz`        | Normal | Center cursor           | Center current line on screen         |
| `zt`        | Normal | Top cursor              | Move current line to top of screen    |
| `zb`        | Normal | Bottom cursor           | Move current line to bottom of screen |

#### Text Objects & Motions

| Key     | Mode   | Action                 | Description                               |
| ------- | ------ | ---------------------- | ----------------------------------------- |
| `iw/aw` | Visual | Inner/Around word      | Select word without/with spaces           |
| `iW/aW` | Visual | Inner/Around WORD      | Select WORD without/with spaces           |
| `is/as` | Visual | Inner/Around sentence  | Select sentence without/with space        |
| `ip/ap` | Visual | Inner/Around paragraph | Select paragraph without/with space       |
| `i"/a"` | Visual | Inner/Around quotes    | Select text inside/including quotes       |
| `i'/a'` | Visual | Inner/Around quotes    | Select text inside/including quotes       |
| `i`/a`  | Visual | Inner/Around backticks | Select text inside/including backticks    |
| `i(/a(` | Visual | Inner/Around parens    | Select text inside/including parens       |
| `i[/a[` | Visual | Inner/Around brackets  | Select text inside/including brackets     |
| `i{/a{` | Visual | Inner/Around braces    | Select text inside/including braces       |
| `it/at` | Visual | Inner/Around tags      | Select HTML/XML tag content/including tag |

#### Editing Commands

| Key          | Mode   | Action              | Description                           |
| ------------ | ------ | ------------------- | ------------------------------------- |
| `i/I`        | Normal | Insert mode         | Insert before cursor/at line start    |
| `a/A`        | Normal | Append mode         | Insert after cursor/at line end       |
| `o/O`        | Normal | New line            | New line below/above                  |
| `s/S`        | Normal | Substitute          | Delete char/line and enter insert     |
| `r/R`        | Normal | Replace             | Replace one char/enter replace mode   |
| `x/X`        | Normal | Delete character    | Delete char under/before cursor       |
| `dd`         | Normal | Delete line         | Delete entire line                    |
| `D`          | Normal | Delete to end       | Delete from cursor to end of line     |
| `C`          | Normal | Change to end       | Delete to end of line and insert      |
| `yy`         | Normal | Yank line           | Copy entire line                      |
| `Y`          | Normal | Yank to end         | Copy from cursor to end of line       |
| `p/P`        | Normal | Paste               | Paste after/before cursor             |
| `u`          | Normal | Undo                | Undo last change                      |
| `<C-r>`      | Normal | Redo                | Redo last undone change               |
| `.`          | Normal | Repeat last command | Repeat last editing command           |
| `J`          | Normal | Join lines          | Join current line with next           |
| `gJ`         | Normal | Join without space  | Join lines without adding space       |
| `~`          | Normal | Toggle case         | Toggle case of character under cursor |
| `gu{motion}` | Normal | Lowercase           | Make motion text lowercase            |
| `gU{motion}` | Normal | Uppercase           | Make motion text uppercase            |

#### Visual Mode

| Key     | Mode   | Action               | Description                        |
| ------- | ------ | -------------------- | ---------------------------------- |
| `v`     | Normal | Visual mode          | Character-wise visual selection    |
| `V`     | Normal | Visual line mode     | Line-wise visual selection         |
| `<C-v>` | Normal | Visual block mode    | Block-wise visual selection        |
| `gv`    | Normal | Reselect last visual | Reselect previous visual selection |
| `o`     | Visual | Switch ends          | Switch to other end of selection   |
| `>`     | Visual | Indent right         | Indent selected text               |
| `<`     | Visual | Indent left          | Unindent selected text             |
| `=`     | Visual | Auto-indent          | Auto-indent selected text          |

#### Search & Replace

| Key              | Mode    | Action                   | Description                          |
| ---------------- | ------- | ------------------------ | ------------------------------------ |
| `/`              | Normal  | Search forward           | Forward search                       |
| `?`              | Normal  | Search backward          | Backward search                      |
| `n/N`            | Normal  | Next/previous match      | Navigate search results              |
| `*/#`            | Normal  | Search word under cursor | Search current word forward/backward |
| `g*/g#`          | Normal  | Search partial word      | Search partial word forward/backward |
| `:s/old/new/`    | Command | Substitute in line       | Replace first match in current line  |
| `:s/old/new/g`   | Command | Substitute all in line   | Replace all matches in current line  |
| `:%s/old/new/g`  | Command | Substitute in file       | Replace all matches in entire file   |
| `:%s/old/new/gc` | Command | Substitute with confirm  | Replace with confirmation prompt     |

#### Windows & Splits

| Key      | Mode   | Action           | Description                 |
| -------- | ------ | ---------------- | --------------------------- |
| `<C-w>s` | Normal | Horizontal split | Split window horizontally   |
| `<C-w>v` | Normal | Vertical split   | Split window vertically     |
| `<C-w>q` | Normal | Close window     | Close current window        |
| `<C-w>o` | Normal | Only window      | Close all other windows     |
| `<C-w>=` | Normal | Equalize windows | Make all windows equal size |
| `<C-w>+` | Normal | Increase height  | Increase window height      |
| `<C-w>-` | Normal | Decrease height  | Decrease window height      |
| `<C-w>>` | Normal | Increase width   | Increase window width       |
| `<C-w><` | Normal | Decrease width   | Decrease window width       |

#### Buffers

| Key         | Mode    | Action          | Description                  |
| ----------- | ------- | --------------- | ---------------------------- |
| `:e {file}` | Command | Edit file       | Open file in current buffer  |
| `:w`        | Command | Write buffer    | Save current buffer          |
| `:w {file}` | Command | Write to file   | Save buffer to specific file |
| `:q`        | Command | Quit            | Close current buffer/window  |
| `:q!`       | Command | Force quit      | Quit without saving changes  |
| `:wq`       | Command | Write and quit  | Save and close               |
| `:x`        | Command | Save and exit   | Save (if changed) and exit   |
| `:bd`       | Command | Buffer delete   | Delete current buffer        |
| `:bn`       | Command | Buffer next     | Go to next buffer            |
| `:bp`       | Command | Buffer previous | Go to previous buffer        |
| `:ls`       | Command | List buffers    | Show all open buffers        |
| `:b {num}`  | Command | Buffer number   | Switch to buffer by number   |

#### Marks & Jumps

| Key       | Mode   | Action            | Description                     |
| --------- | ------ | ----------------- | ------------------------------- |
| `m{a-z}`  | Normal | Set local mark    | Set mark in current buffer      |
| `m{A-Z}`  | Normal | Set global mark   | Set mark across buffers         |
| `'{mark}` | Normal | Jump to mark line | Jump to line of mark            |
| ``{mark}` | Normal | Jump to mark pos  | Jump to exact position of mark  |
| `''`      | Normal | Previous location | Jump to previous location       |
| ````      | Normal | Previous position | Jump to previous exact position |
| `<C-o>`   | Normal | Jump backward     | Go back in jump list            |
| `<C-i>`   | Normal | Jump forward      | Go forward in jump list         |

#### Folds

| Key  | Mode   | Action          | Description               |
| ---- | ------ | --------------- | ------------------------- |
| `zf` | Normal | Create fold     | Create fold for motion    |
| `zo` | Normal | Open fold       | Open fold under cursor    |
| `zc` | Normal | Close fold      | Close fold under cursor   |
| `za` | Normal | Toggle fold     | Toggle fold under cursor  |
| `zR` | Normal | Open all folds  | Open all folds in buffer  |
| `zM` | Normal | Close all folds | Close all folds in buffer |

#### Registers

| Key      | Mode    | Action            | Description                              |
| -------- | ------- | ----------------- | ---------------------------------------- |
| `"{reg}` | Normal  | Use register      | Use specific register for next operation |
| `:reg`   | Command | Show registers    | Display all register contents            |
| `""`     | Normal  | Unnamed register  | Default register                         |
| `"0`     | Normal  | Yank register     | Last yanked text                         |
| `"1-"9`  | Normal  | Delete registers  | Recently deleted text                    |
| `"+`     | Normal  | System clipboard  | System clipboard (your config uses this) |
| `"*`     | Normal  | Primary selection | Primary selection (X11)                  |

#### Macros

| Key      | Mode   | Action         | Description                 |
| -------- | ------ | -------------- | --------------------------- |
| `q{reg}` | Normal | Record macro   | Start recording to register |
| `q`      | Normal | Stop recording | Stop macro recording        |
| `@{reg}` | Normal | Play macro     | Execute macro from register |
| `@@`     | Normal | Repeat macro   | Repeat last executed macro  |


##  File Explorer (nvim-tree) Keymaps

When the file explorer is open (`<leader>e`), you can use:

### File Operations

| Key     | Action                   | Description                   |
| ------- | ------------------------ | ----------------------------- |
| `<CR>`  | Open file/directory      | Open file or toggle directory |
| `o`     | Open file/directory      | Same as Enter                 |
| `<Tab>` | Preview file             | Preview without moving cursor |
| `<C-v>` | Open in vertical split   | Open file in vertical split   |
| `<C-x>` | Open in horizontal split | Open file in horizontal split |
| `<C-t>` | Open in new tab          | Open file in new tab          |

### Navigation

| Key     | Action                   | Description               |
| ------- | ------------------------ | ------------------------- |
| `<C-]>` | Change root to directory | Set directory as new root |
| `P`     | Jump to parent           | Jump to parent directory  |
| `<BS>`  | Close directory          | Close current directory   |

### File Management

| Key | Action                | Description                           |
| --- | --------------------- | ------------------------------------- |
| `a` | Create file/directory | Create new file (add / for directory) |
| `d` | Delete file/directory | Move to trash                         |
| `r` | Rename file/directory | Rename current file/directory         |
| `c` | Copy file/directory   | Copy to clipboard                     |
| `x` | Cut file/directory    | Cut to clipboard                      |
| `p` | Paste file/directory  | Paste from clipboard                  |

### Copy Path Operations

| Key  | Action             | Description                     |
| ---- | ------------------ | ------------------------------- |
| `y`  | Copy filename      | Copy filename to clipboard      |
| `Y`  | Copy relative path | Copy relative path to clipboard |
| `gy` | Copy absolute path | Copy absolute path to clipboard |

### View Options

| Key | Action                   | Description                      |
| --- | ------------------------ | -------------------------------- |
| `I` | Toggle hidden files      | Show/hide dotfiles               |
| `H` | Toggle dotfiles          | Show/hide files starting with .  |
| `R` | Refresh tree             | Reload directory contents        |
| `E` | Expand all directories   | Expand all directories in tree   |
| `W` | Collapse all directories | Collapse all directories in tree |

### Help & Exit

| Key  | Action              | Description            |
| ---- | ------------------- | ---------------------- |
| `q`  | Close file explorer | Close nvim-tree window |
| `g?` | Help                | Show all keymaps       |

---

## Telescope Keymaps

When using Telescope (`<leader>ff`, `<leader>fg`, etc.), these keymaps are available:

### Insert Mode (while typing in search)

| Key     | Action           | Description                       |
| ------- | ---------------- | --------------------------------- |
| `<C-n>` | Next item        | Move to next item in list         |
| `<C-p>` | Previous item    | Move to previous item in list     |
| `<C-j>` | Next item        | Alternative to Ctrl-n             |
| `<C-k>` | Previous item    | Alternative to Ctrl-p             |
| `<C-c>` | Close telescope  | Close telescope window            |
| `<Esc>` | Close telescope  | Close telescope window            |
| `<CR>`  | Select item      | Open selected file/perform action |
| `<C-x>` | Horizontal split | Open in horizontal split          |
| `<C-v>` | Vertical split   | Open in vertical split            |
| `<C-t>` | New tab          | Open in new tab                   |
| `<C-q>` | Send to quickfix | Send results to quickfix list     |
| `<C-l>` | Complete tag     | Complete current input            |

### Normal Mode (after pressing Esc in telescope)

| Key     | Action             | Description                       |
| ------- | ------------------ | --------------------------------- |
| `j/k`   | Next/previous item | Navigate with vim motions         |
| `<CR>`  | Select item        | Open selected file/perform action |
| `<C-x>` | Horizontal split   | Open in horizontal split          |
| `<C-v>` | Vertical split     | Open in vertical split            |
| `<C-t>` | New tab            | Open in new tab                   |
| `q`     | Close telescope    | Close telescope window            |

---

##  Installed LSPs & Formatters

### Language Servers (via Mason)

| Language/Technology | LSP Server | Description                                      |
| ------------------- | ---------- | ------------------------------------------------ |
| **Python**          | `pyright`  | Microsoft's static type checker for Python       |
| **Go**              | `gopls`    | Official Go language server with gofumpt         |
| **TypeScript/JS**   | `ts_ls`    | TypeScript language server                       |
| **HTML**            | `html`     | HTML language server                             |
| **CSS**             | `cssls`    | CSS language server                              |
| **HTML/CSS**        | `emmet_ls` | Emmet abbreviations (great for Django templates) |
| **Lua**             | `lua_ls`   | Lua language server (for Neovim config)          |

### LSP Features Configuration

- **Pyright Settings**:
  - Auto search paths enabled
  - Diagnostic mode: Open files only
  - Use library code for types
- **Gopls Settings**:
  - Gofumpt formatting enabled
- **Capabilities**: Enhanced with nvim-cmp for better completion

---

## 🌳 Treesitter Languages

The following languages are automatically installed and configured for enhanced syntax highlighting, indentation, and code understanding:

| Language          | Purpose                               |
| ----------------- | ------------------------------------- |
| `python`          | Python syntax and indentation         |
| `javascript`      | JavaScript syntax and indentation     |
| `typescript`      | TypeScript syntax and indentation     |
| `html`            | HTML syntax and indentation           |
| `css`             | CSS syntax and indentation            |
| `go`              | Go syntax and indentation             |
| `lua`             | Lua syntax (for Neovim configuration) |
| `json`            | JSON syntax highlighting              |
| `yaml`            | YAML syntax highlighting              |
| `markdown`        | Markdown syntax highlighting          |
| `markdown_inline` | Inline markdown (for render-markdown) |

**Treesitter Features**:

- Advanced syntax highlighting (disabled vim regex highlighting)
- Automatic indentation based on syntax
- Better code understanding for LSP integration

---

##  Plugin-Specific Features

### nvim-cmp (Autocompletion)

**Sources Priority**:

1. LSP completion (highest priority)
2. LuaSnip snippets
3. Buffer text
4. File system paths

**Special Features**:

- Smart Enter behavior: accepts completion if selected, otherwise creates new line
- Tab/Shift-Tab navigation through completion items and snippet placeholders
- Integration with nvim-autopairs for bracket completion

### nvim-autopairs

**Features**:

- Automatic closing of brackets: `()`, `[]`, `{}`
- Automatic closing of quotes: `"`, `'`, `` ` ``
- Disabled in Telescope prompts and Vim command line
- Treesitter integration for syntax-aware pairing
- Fast wrap feature available

**Integration**: Works with nvim-cmp for completion-aware bracket insertion

### render-markdown.nvim

**Features**:

- Real-time markdown rendering in Neovim buffers
- Enhanced headings with icons: `󰲡 󰲣 󰲥 󰲧 󰲩 󰲫`
- Code block syntax highlighting with borders
- List bullets: `● ○ ◆ ◇`
- Checkbox rendering: `󰄬` (checked), `󰄭` (unchecked)
- Table rendering with full styling
- GitHub/Obsidian-style callouts:
  - `[!NOTE]` → `󰋽 Note`
  - `[!TIP]` → `󰌶 Tip`
  - `[!IMPORTANT]` → `󰅾 Important`
  - `[!WARNING]` → `󰀪 Warning`
  - `[!CAUTION]` → `󰳦 Caution`

### Telescope Configuration

**Default Settings**:

- Custom key mappings in insert mode
- Disabled `<C-u>` and `<C-d>` default bindings for better control

---

## Core Options & Configuration

### Leader Key & Shell

- **Leader Key**: `<Space>` (both leader and local leader)
- **Shell**: Fish shell (`/usr/bin/fish`)

### Line Numbers & Navigation

- **Relative Line Numbers**: Enabled for easier vertical movement
- **Absolute Line Numbers**: Also shown for current line reference
- **Scroll Offset**: 8 lines (keeps 8 lines visible above/below cursor)

### Indentation & Tabs

- **Tab Size**: 2 spaces per tab (configured for web development)
- **Shift Width**: 2 spaces for auto-indentation
- **Expand Tabs**: Converts tabs to spaces
- **Auto Indent**: Automatic indentation based on previous line

### Search Behavior

- **Case Insensitive**: Search ignores case by default
- **Smart Case**: Uses case-sensitive search when uppercase letters are typed
- **Incremental Search**: Shows matches as you type

### Appearance & UI

- **True Colors**: 24-bit color support enabled
- **Background**: Dark theme (Tokyo Night Storm)
- **Sign Column**: Always visible to prevent UI shifts
- **Show Mode**: Disabled (mode shown in lualine instead)

### System Integration

- **Clipboard**: System clipboard integration (`unnamedplus`)
  - `y` copies to system clipboard
  - `p` pastes from system clipboard
- **Mouse**: Mouse support enabled for all modes

### Special Delete/Cut Behavior

**Note**: This configuration sends deleted and cut text to the black hole register to prevent clipboard pollution:

- `d` (delete) → sends to black hole register `"_`
- `c` (change) → sends to black hole register `"_`
- `x` (delete char) → sends to black hole register `"_`

To actually cut text to clipboard, use: `"+d` or `"*d`

---

##  Advanced Usage Tips

### LSP Debugging Commands

- `:LspInfo` - Show detailed LSP client status
- `:LspStart` - Start LSP client
- `:LspStop` - Stop LSP client
- `:LspRestart` - Restart LSP client

### Mason Commands

- `:Mason` - Open Mason UI to manage LSP servers
- `:MasonInstall <package>` - Install a package
- `:MasonUninstall <package>` - Uninstall a package
- `:MasonUpdate` - Update all packages

### Telescope Commands

- `:Telescope` - List all available Telescope commands
- `:Telescope keymaps` - Search through all keymaps
- `:Telescope commands` - Search through all commands
- `:Telescope colorscheme` - Preview and select colorschemes

### Treesitter Commands

- `:TSUpdate` - Update all parsers
- `:TSInstall <language>` - Install parser for language
- `:TSUninstall <language>` - Uninstall parser
- `:TSPlaygroundToggle` - Toggle Treesitter playground (if installed)

### Buffer & Window Management Tips

- Use `:buffers` or `:ls` to see all open buffers
- Use `:only` to close all windows except current one
- Use `<C-w>T` to move current window to new tab
- Use `:tabnew` to open new empty tab

### Search & Replace Patterns

- `:%s/\<word\>/replacement/g` - Replace whole words only
- `:%s/^/prefix/g` - Add prefix to all lines
- `:%s/$/suffix/g` - Add suffix to all lines
- `:g/pattern/d` - Delete all lines matching pattern
- `:v/pattern/d` - Delete all lines NOT matching pattern

### Markdown Workflow

1. Open markdown file (`.md`)
2. Rendering activates automatically
3. Use `<leader>mt` to toggle rendering if needed
4. Use `<leader>m+`/`<leader>m-` to adjust margins while editing
5. Use callouts like `[!NOTE]` for enhanced formatting

---

## Customization Notes

This configuration is optimized for:

- **AZERTY keyboard layout** (special bindings for `à`, `ç`, `é`, `è`)
- **Web development** (2-space indentation)
- **Python development** (Pyright LSP)
- **Go development** (gopls with gofumpt)
- **Fish shell users**
- **Dark theme preference** (Tokyo Night Storm)
- **Markdown documentation** (enhanced rendering)

### Plugin Loading Strategy

- **Lazy Loading**: Most plugins load only when needed
- **Priority Loading**: Theme loads first for consistent appearance
- **Event-Based Loading**: nvim-autopairs loads only in insert mode
- **File Type Loading**: render-markdown loads only for markdown files

---

## 🆘 Help & Documentation

### Built-in Help System

- `:help <topic>` - Get help on any topic
- `:help key-notation` - Learn about key notation
- `:help mapping` - Learn about keymaps
- `:help options` - Learn about Neovim options
- `:help function-list` - List of all functions
- `<leader>fh` - Search help with Telescope

### Plugin Documentation

- `:help nvim-tree` - nvim-tree documentation
- `:help telescope` - Telescope documentation
- `:help lsp` - LSP documentation
- `:help treesitter` - Treesitter documentation

### Quick Reference

- Press `g?` in nvim-tree for file explorer help
- Press `<C-h>` in Telescope insert mode for help
- Use `:checkhealth` to diagnose configuration issues
