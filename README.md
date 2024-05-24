# Install
1) install [neovim](https://neovim.io/)
for linux go here: [linux install instructions](https://github.com/neovim/neovim/blob/master/INSTALL.md#linux)

2) install [packer](https://github.com/wbthomason/packer.nvim)

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

3) clone repo to `~/.config/nvim`
```shell
mkdir -p ~/.config/nvim
git clone git@github.com:prescottbreeden/lua-nvim.git ~/.config/nvim
```

4) open neovim and install packages
```shell
nvim ~/.config/nvim/lua/package.lua
```
once the file is open, close all errors and then run `:so` to source
the code and save the file `:w` to auto install plugins

5) start growing a bigger neck beard

# Latest

Slimmed down considerably from previous CoC config. Always a WIP.

## Remaps

Leader key: `<spacebar>`

| mode   | description            | command                       |
| ------ | ---------------------- | ----------------------------- |
| normal | nav to window          | `<C-{h,j,k,l}>`               |
| normal | resize window          | `<C-{left, right, up, down}>` |
| normal | normalize windows      | `<C-w><C-w>`                  |
| normal | clear search highlight | `<C-n>`                       |
| normal | navigate buffers       | `<S-l>`/`<S-h>`               |
| visual | move line up/down      | `J`/`K`                       |
| insert | alternate esc          | `jk`                          |

## Packages

### LSP

| mode          | description                   | command         |
| ------------- | ----------------------------- | --------------- |
| normal        | goto definition               | `gd`            |
| normal        | goto references               | `gr`            |
| normal        | trigger hover                 | `K`             |
| normal        | quickfix                      | `<leader>qf`    |
| normal        | rename                        | `<leader>rn`    |
| normal        | toggle AST                    | `<leader>ast`   |
| insert        | suggest options               | `<C-space>`     |
| insert        | next/prev option              | `<C-n>`/`<C-p>` |
| insert        | confirm option                | `<C-y>`         |
| insert        | signature help                | `<C-h>`         |

### Trouble

| mode          | description                   | command         |
| ------------- | ----------------------------- | --------------- |
| normal        | open diagnostics              | `<leader>xx`    |

### Harpoon

Harpoon menu can also be manually manipulated like any buffer

| description    | command             |
| -------------- | ------------------- |
| show/edit list | `<C-e>`         |
| add            | `<leader>a`         |
| select         | `<leader>{1,2,3,4}` |

### Telescope

| description                    | command       |
| ------------------------------ | ------------- |
| search files under git control | `<leader>fp`  |
| search all file names          | `<leader>ff`  |
| search all buffers             | `<leader>fb`  |
| search all keymaps             | `<leader>fk`  |
| live grep all files            | `<leader>fg`  |
| dual grep all files            | `<leader>gg`  |
| fuzzy find current buffer      | `<leader>/`  |
| close buffer in buffer search  | `<C-x>`       |

### Nerdtree

| description  | command      |
| ------------ | ------------ |
| toggle tree  | `<leader>ee` |
| goto current | `<leader>ef` |

### Undotree

| description   | command     |
| ------------- | ----------- |
| open undotree | `<leader>u` |

### Prettier

| mode          | description                   | command         |
| ------------- | ----------------------------- | --------------- |
| normal/visual | format file/selected          | `:Prettier`     |

### Zen Mode
| mode          | description                   | command         |
| ------------- | ----------------------------- | --------------- |
| normal        | focus only on current buffer  | `<leader>zz`    |

### Other Notes
DAP (debugger) is not configured, but dap.lua has a default config file
if that is of interest to you
