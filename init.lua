-- Use system clipboard
vim.opt.clipboard:append("unnamedplus")

-- Make j and k move through visual lines instead of physical lines
vim.keymap.set("n", "j", "gj", { noremap = true })
vim.keymap.set("n", "k", "gk", { noremap = true })

-- Make H and L go to the start and end of the line
vim.keymap.set("n", "H", "^", { noremap = true })
vim.keymap.set("n", "L", "$", { noremap = true })

-- Keep original j/k behavior available with gj/gk
vim.keymap.set("n", "gj", "j", { noremap = true })
vim.keymap.set("n", "gk", "k", { noremap = true })

vim.opt.compatible = false  -- Use Vim defaults rather than vi (opposite of nocompatible)
vim.opt.wrap = true         -- Enable line wrapping
vim.opt.linebreak = true    -- Break lines at word boundaries

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Lua block for VSCode-Neovim integration
local function move(d)
  return function()
    -- Only works in charwise visual mode
    if vim.api.nvim_get_mode().mode ~= 'v' then return 'g' .. d end
    require('vscode-neovim').action('cursorMove', {
      args = {
        {
          to = d == 'j' and 'down' or 'up',
          by = 'wrappedLine',
          value = vim.v.count1,
          select = true,
        },
      },
    })
    return '<Ignore>'
  end
end

vim.keymap.set({ 'v' }, 'gj', move('j'), { expr = true })
vim.keymap.set({ 'v' }, 'gk', move('k'), { expr = true })

require("config.lazy")

vim.cmd[[colorscheme tokyonight]]

vim.keymap.set("n", "s", require('substitute').operator, { noremap = true })
vim.keymap.set("x", "s", require('substitute').visual, { noremap = true })
