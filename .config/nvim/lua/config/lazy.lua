-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",

      config = function ()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
          ensure_installed = { "lua", "vim", "vimdoc", "query", "heex", "javascript", "html", "kotlin", "clojure" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
      end

    },
    { "nvim-treesitter/nvim-treesitter-context" },
    { "franemar/timedot-vim" },
--    { "Mofiqul/vscode.nvim",
--      priority = 1000,
--      --[[ opts = {
--        color_overrides = {
 --         vscBack = '#f8f8f8'
 --       },
 --     },
 --     ]]
 --   },
    {
      "scottmckendry/cyberdream.nvim",
      lazy = false,
      priority = 1000,
      opts = { variant = "auto" }
    },
    {
      "OXY2DEV/markview.nvim",
      lazy = false,      -- Recommended
      -- ft = "markdown" -- If you decide to lazy-load anyway

      dependencies = {
          "nvim-treesitter/nvim-treesitter",
          "nvim-tree/nvim-web-devicons"
      }
   },
   {
     {
       "Olical/conjure",
       ft = { "clojure", "python" },
       lazy = true,
       init = function()
         -- Set configuration options here
         -- Uncomment this to get verbose logging to help diagnose internal Conjure issues
         -- This is VERY helpful when reporting an issue with the project
         -- vim.g["conjure#debug"] = true
       end,

       -- Optional cmp-conjure integration
       --dependencies = { "PaterJason/cmp-conjure" },
     },
     --{
     --  "PaterJason/cmp-conjure",
     --  lazy = true,
     --  config = function()
    --   local cmp = require("cmp")
       --  local config = cmp.get_config()
        -- table.insert(config.sources, { name = "conjure" })
       --  return cmp.setup(config)
      -- end,
     --},
  },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

