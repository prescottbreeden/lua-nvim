# Install

1. install [neovim](https://neovim.io/)
   for linux go here: [linux install instructions](https://github.com/neovim/neovim/blob/master/INSTALL.md#linux)

2. clone repo to `~/.config/nvim`

```shell
mkdir -p ~/.config/nvim
git clone git@github.com:prescottbreeden/lua-nvim.git ~/.config/nvim
```

4. open neovim
   there might be some errors after installing, lazy is a little finicky, so
   just close neovim and reopen it again and run `:checkhealth` to see if all
   is jiggy.

5. start growing a bigger neck beard

# Latest

Replaced Packer with Lazy, cause that's what the cool kids are doing

## Remaps

Leader key: `<spacebar>`

WhichKey has been added to help provide descriptions and encourage grouping
keybindings by plugin/concept and is activated by pressing the spacebar.

You can also search keybindings with `<leader>fk`
