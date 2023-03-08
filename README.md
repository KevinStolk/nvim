<div align="center">

# Do U Even Vim Brah?

##### My personal neovim config inspired by many content creators and Vim enjoyers.</p>

</div>

![Neochad](neochad.png)

## Table of contents

- [Plugins](#plugins)
- [File Structure](#file%20structure)
- [Installation](#installation)

## Plugins:

> This config is packed with plugins that are essential for development (in my honest opinion) with the goal in mind to have a blazingly fast, reliable and stable experience.

### Current Plugins:

- Packer (plugin manager for vim)
- Full LSP Setup (LSP Zero):
  - LSPConfig
  - Mason
  - Mason LSPConfig
  - CMP
  - CMP Buffer
  - CMP Path
  - CMP Luasnip
  - CMP Nvim LSP
  - CMP Nvim Lua
  - LuaSnip (commonly used snippets)
  - Friendly Snippets
- Treesitter (syntax highlighting)
- Playground (View treestiter info in Neovim)
- Telescope (Fuzzy Finder for Neovim, but can be used for absolutely everything)
- Telescope File Browser (File browser for Telescope)
- Different Colorschemes
  - Rose-Pine
  - Gruvbox
  - Tokyo Night (TOKIOOOOOO)
  - Dark Plus
  - Nightfly
- Gitsigns (Git integration in buffers)
- TS-Rainbow (Rainbow pairs)
- Autopairs (Auto pair plugin that closes multiple characters)
- TS-Context-Commentstring (Plugin for setting the commonstring option based on cursor location)
- TS-Autotag (Auto close tag)
- Comment (commenter, what did you expect?)
- Web-Devicons (Icons)
- Zen-Mode (Zen mode)
- Indent Blankline (Indenting guides for Neovim)
- Colorizer (Color highlighter)
- ToggleTerm (built-in terminal in Neovim)
- Lualine (Blazingly fast statusline for Neovim in Lua)
- Harpoon (File marker made by ThePrimeagen, absolutely insane for productivity)
- Vim-Be-Good (minigame in vim made by ThePrimeagen)
- Codeium (Code completion, similar to Copilot and Tabnine)
- Bufferline
- Vimwiki (Personal wiki in vim, uses markdown as default syntax)
- Cheat-Sheet (cheat sheet to search up methods or concepts u might have forgotten about)
- Markdown Preview (any explanation needed?)
- Rest Client (built-in rest client to test web requests)
- Undotree (Undo history checker)
- Fugitive (Git for vim)
- Null-LS (Formatter)

## File Structure

<pre>
~/.config/nvim
├── after
│   ├── plugin
│   │   └── (plugin.lua)
├── lua
│   ├── (user folder)
│   │       ├── init.lua
│   │       ├── packer.lua
│   │       ├── remap.lua
│   │       └── set.lua
├── plugin
│   └── packer_compiled.lua
└── init.lua
</pre>

## Installation:

**1. Install the dependencies:**

```bash
- Neovim 0.5.0+ required
- Install packer from this git repo:
https://github.com/wbthomason/packer.nvim
```

**2. Clone the repo into your .config folder and install the plugins:**

```bash
git clone https://github.com/KevinStolk/nvim

cd nvim

cd lua/(your user folder)

nvim packer.lua
```

> Inside packer.lua type the following commands:

```bash
:so

:PackerSync
```

> This should install the plugins without any issues.

**3. You're done!**

> You're now done installing the config, make sure to check the set.lua and remap.lua
> to get familiar with the keybinds and such.
