# vim-fugitive-toggle
A toggle for vim-fugitive written in lua.

## Installation
Be sure to be using neovim. Add the following to your init.lua.
```
-- Within packer setup --
  use 'wcascades/vim-fugitive-toggle'
  ...
```

To set a mapping to `<leader>g`:

```
local map = vim.api.nvim_set_keymap
map('n', '<leader>g', [[<cmd>lua require('vim-fugitive-toggle').toggle()<cr>]], { noremap = true })
```
