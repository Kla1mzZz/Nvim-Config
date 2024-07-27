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

require("lazy").setup({
	{'phaazon/hop.nvim'},

	{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },},


	{'nvim-treesitter/nvim-treesitter'},
	{'neovim/nvim-lspconfig'},

    --Color Scheme
	{'folke/tokyonight.nvim'},
    {'catppuccin/nvim', name = "catppuccin", priority = 1000 },
    {'rebelot/kanagawa.nvim'},
    {'dracula/vim'}, 
    {
    'AlexvZyl/nordic.nvim',
    priority = 1000,
    
    },
    
    {
        "smoka7/multicursors.nvim",
        event = "VeryLazy",
        dependencies = {
            'nvimtools/hydra.nvim',
        },
        opts = {},
        cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
        keys = {
                {
                    mode = { 'v', 'n' },
                    '<Leader>m',
                    '<cmd>MCstart<cr>',
                    desc = 'Create a selection for selected text or word under the cursor',
                },
            },
    },


    {'hrsh7th/nvim-cmp'}, {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/vim-vsnip'},
    {'hrsh7th/cmp-vsnip'},

    {'williamboman/mason.nvim'},

    {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',

      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{}
    end
    },

    {'numToStr/Comment.nvim'},

    {'jose-elias-alvarez/null-ls.nvim'},

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
})
