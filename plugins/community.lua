return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

--- colorschemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
 {
  "EdenEast/nightfox.nvim",
  opts = {
    options = {
        transparent = true,
      module_default = false,
      modules = {
        aerial = true,
        cmp = true,
        ["dap-ui"] = true,
        dashboard = true,
        diagnostic = true,
        gitsigns = true,
        native_lsp = true,
        neotree = true,
        notify = true,
        symbol_outline = true,
        telescope = true,
        treesitter = true,
        heirline = true,
        whichkey = true,
      },
    },
    groups = { all = { NormalFloat = { link = "Normal" } } },
   },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = false,
      integrations = {
        telescope = true,
        -- harpoon = true,
        mason = true,
        -- neotest = true,
      }
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)
      vim.cmd.colorscheme 'catppuccin-machiatto'
    end
  },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
}
