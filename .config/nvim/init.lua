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
-- vim.cmd("colorscheme vscode")
vim.cmd("colorscheme cyberdream")

--vim.lsp.config('tscriptls', {
--  on_attach = function()
--    print('TypeScript Language Server is now active in this file')
--  end,
--})

--vim.lsp.enable('tscriptls')

