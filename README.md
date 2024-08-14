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

> This config is packed with plugins that I find are essential for development with the goal in mind to have a blazingly fast, reliable and stable experience.

### Current Plugins:

- Lazy (plugin manager for vim)
- Full LSP Setup:
  - LSPConfig
  - Mason
  - Mason LSPConfig
  - Mason Tool Installer
  - Typescript-Tools
  - CMP
  - CMP Buffer
  - CMP Path
  - CMP Luasnip
  - CMP Nvim LSP
  - CMP Nvim Lua
  - LuaSnip (commonly used snippets)
  - Friendly Snippets
- Treesitter (Syntax highlighting)
- Telescope (Fuzzy Finder for Neovim, but can be used for absolutely everything)
- Telescope File Browser (File browser for Telescope)
- Different Colorschemes
  - Rose-Pine
  - Gruvbox
  - Tokyo Night
- Gitsigns (Git integration in buffers)
- Autopairs (Auto pair plugin that closes multiple characters)
- TS-Autotag (Auto close tag)
- Comment (commenter)
- Web-Devicons (Icons)
- Zen-Mode (Zen mode)
- Indent Blankline (Indenting guides for Neovim)
- Colorizer (Color highlighter)
- ToggleTerm (built-in terminal in Neovim)
- Lualine (Blazingly fast statusline for Neovim in Lua)
- Harpoon (File marker made by ThePrimeagen, absolutely insane for productivity)
- Vim-Be-Good (minigame in vim made by ThePrimeagen)
- Codeium (Code completion, similar to Copilot and Tabnine)
- Laravel (Laravel tooling to make life easier)
- Blamer (Gitlens but for neovim)
- Notify (Notifications)
- Which-Key (Temporary plugin to get used to keybinds faster)
- Vimwiki (Personal wiki in vim, uses markdown as default syntax)
- Cheat-Sheet (cheat sheet to search up methods or concepts u might have forgotten about)
- Undotree (Undo history checker)
- Lazygit (Git client integrated with Toggleterm)
- Conform (Formatter)
- Nvim-Lint (Linting)
- Maximizer (Maximizes split window)
- Oil (File explorer to edit filesystem like an Nvim buffer)
- Peepsight (Glance at your code without distractions)
- Sunglasses (Only see what u want to see)

## File Structure

<pre>
~/.config/nvim
├── lua
│   ├── (user folder)
│   │       ├─ core
│   │       ├── init.lua
│   │       ├── options.lua
│   │       ├── keymaps.lua
│   │       ├─ plugins
│   │       ├── (lsp folder)
│   │       └── (plugin.lua)
└── init.lua
</pre>

## Installation:

**1. Install the dependencies:**

```bash
- Neovim 0.5.0+ required
```

**2. Clone the repo into your .config folder and Lazy should install all the plugins:**

```bash
git clone https://github.com/KevinStolk/nvim

cd nvim

nvim init.lua

> This should install the plugins without any issues.

```
**3. You're done!**

> You're now done installing the config, make sure to check the options.lua and keymaps.lua
> to get familiar with the keybinds and such.
