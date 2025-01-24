local vim = vim
-- local Plug = vim.fn['plug#']

-- vim.call('plug#begin')

-- Plugins
--Plug ('nvim-treesitter/nvim-treesitter'), {['do'] = ':TSUpdate'})

--vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
-- vim.cmd('silent! colorscheme seoul256')

require("config.lazy")
vim.cmd("colorscheme vscode")
