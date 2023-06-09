# Neovim Lua Config

CoC Neovim IDE configured with Lua instead of vim scripts. Non-plugin-specific
options and remaps are in `lua/user` and options, modifications, or additional
mappings for plugins in `after/plugin/{plugin-name}`.

Use `<leader>?` to open up the cheat sheet for list of current mappings.

```
  packer.nvim - Total plugins: 25
 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 • ChatGPT.nvim
 • coc.nvim
 • friendly-snippets
 • harpoon
 • jellybeans
 • nerdtree
 • nerdtree-git-plugin
 • nui.nvim
 • nvim-treesitter
 • nvim-web-devicons
 • packer.nvim
 • playground
 • plenary.nvim
 • rust.vim
 • telescope.nvim
 • undotree
 • vim-airline
 • vim-airline-themes
 • vim-commentary
 • vim-eunuch
 • vim-fugitive
 • vim-gitgutter
 • vim-repeat
 • vim-surround
 • vim-windowswap
 • virt-column.nvim
```

## Install

- install [nvim v0.9.0+](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- clone and move to config `~/.config/lua-nvim`
- rename to `nvim` (should now have the path `~/.config/nvim`)
- download [packer](https://github.com/wbthomason/packer.nvim):

Unix, Linux install for Packer:

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- `nvim ~/.config/nvim/lua/user/packer.lua`
- `:so` give the file a quick shout out to source it
- `:PackerSync` (re-run if there are any errors)
- `:qa` and should be good to go

## With ChatGPT

Eventually I might fork this and try to see if I can fix some of the
inconsistent behavior, but I'm ok with rough around the edges

- [get token](https://platform.openai.com/account/api-keys)
- add as ENV variable `export OPENAI_API_KEY=your_key`

## Lua Scripts

- FixColors: `:lua FixColors()` -- remove bg from float windows
- FixColorColumn: `:lua FixColorColumn()` -- repaint color column for filetype

## Remaps & Funsies

Leader key: `,`

| mode   | description            | command                       |
| ------ | ---------------------- | ----------------------------- |
| normal | nav to window          | `<C-{h,j,k,l}>`               |
| normal | resize window          | `<C-{left, right, up, down}>` |
| normal | normalize windows      | `<C-w><C-w>`                  |
| normal | clear search highlight | `<C-n>`                       |
| visual | move line up/down      | `J`/`K`                       |
| normal | open terminal          | `<leader>t`                   |
| insert | alternate esc          | `jk`                          |

---

## Packages

### CoC

| mode          | description                   | command         |
| ------------- | ----------------------------- | --------------- |
| normal        | goto definition               | `gd`            |
| normal        | goto type definition          | `gy`            |
| normal        | goto implementation           | `gi`            |
| normal        | goto references               | `gr`            |
| normal        | trigger hover                 | `K`             |
| normal        | rename                        | `<leader>rn`    |
| normal        | open code actions             | `<leader>cc`    |
| insert        | suggest options               | `<C-space>`     |
| insert        | next/prev option              | `<C-n>`/`<C-p>` |
| normal        | open diagnostics              | `<leader>x`     |
| normal        | next diagnostic               | `[d`            |
| normal        | prev diagnostic               | `]d`            |
| normal/visual | code action selected          | `<leader>ca`    |
| normal        | code action cursor            | `<leader>cc`    |
| normal        | code action whole buffer      | `<leader>cG`    |
| normal        | code action current buffer    | `<leader>cg`    |
| normal        | code action refactor          | `<leader>re`    |
| normal        | code action refactor selected | `<leader>rr`    |
| normal        | quickfix                      | `<leader>qf`    |
| normal/visual | format file/selected          | `<leader>pf`    |

### Harpoon

Harpoon menu can also be manually manipulated like any buffer

| description    | command             |
| -------------- | ------------------- |
| show/edit list | `<leader>e`         |
| add            | `<leader>h`         |
| select         | `<leader>{1,2,3,4}` |

### Telescope

| description                    | command       |
| ------------------------------ | ------------- |
| search files under git control | `<leader>fp`  |
| search all file names          | `<leader>ff`  |
| search all buffers             | `<leader>fb`  |
| dual grep all files            | `<leader>fg`  |
| fuzzy find current buffer      | `<leader>,ff` |

### Nerdtree

| description  | command      |
| ------------ | ------------ |
| toggle tree  | `<leader>m,` |
| goto current | `<leader>mf` |

### Undotree

| description   | command     |
| ------------- | ----------- |
| open undotree | `<leader>u` |

### Window-swap

| description              | command            |
| ------------------------ | ------------------ |
| swap window in direction | `<A-{h, j, k, l}>` |

### ChatGPT

| description              | command                    |
| ------------------------ | -------------------------- |
| open ChatGPT simple      | `<leader>ai`               |
| apply custom persona     | `<leader>aa`               |
| edit with instructions   | `<leader>al`               |
| submit prompt            | `<A-enter>`                |
| close                    | `<C-c>` or `:q` or `<esc>` |
| toggle settings/sessions | `<C-o>`                    |
| cyles windows            | `<Tab>` or mouse click     |
| new session              | `<C-n>`                    |
| select session           | `<space>`                  |
| rename session           | `r`                        |
| delete session           | `d`                        |
| scroll up/down           | `<C-u>`/`<C-d>`            |
| yank last                | `<C-y>`                    |
| yank last code           | `<C-k>`                    |
