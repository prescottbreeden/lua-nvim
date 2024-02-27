" ========================
"       Cheat Sheet
" ========================
"
" npm clean cache: (cache is a mounted drive apparently)
" rm -rf /dev/shm/helltool/apps/web/webpack
"
" yanking file paths
" relative path
":let @+ = expand("%")

" full path
":let @+ = expand("%:p")

" just filename
":let @+ = expand("%:t")

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
| dual grep all files            | `<leader>fg`  |
| fuzzy find current buffer      | `<leader>fc`  |
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




