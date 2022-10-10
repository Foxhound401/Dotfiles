  ---@diagnostic disable: undefined-global
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})

	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocomman that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost _plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- let packer manage itself
	use("neovim/nvim-lspconfig")
	use("tpope/vim-fugitive") -- Git tool box
	use("tpope/vim-surround") -- add quote, brackets around words
	-- use("tpope/vim-commentary") -- Comment stuff
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	use("antoinemadec/FixCursorHold.nvim") -- This is needed to fix lsp doc highlight
	use("lewis6991/impatient.nvim")
	use("numToStr/Comment.nvim") -- comment also integrate with treesitter
	use("norcalli/nvim-colorizer.lua")
	use("psliwka/vim-smoothie")
	use("mhinz/vim-startify") -- homepage for vim
	use("lukas-reineke/indent-blankline.nvim") -- blankline that integrate with tree sitter
	use("kyazdani42/nvim-web-devicons")
	use("folke/which-key.nvim")
	use("Shatur/neovim-session-manager")
	use("godlygeek/tabular")
	use("kyazdani42/nvim-tree.lua")
	use("p00f/nvim-ts-rainbow")
  use("nathom/filetype.nvim")
  use("mbbill/undotree")


	-- Lines
	use("hoob3rt/lualine.nvim")
	-- use("akinsho/bufferline.nvim")

	-- Cmp Plugins
	use("hrsh7th/nvim-cmp") -- buffer completions
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-vsnip")

  -- Bars
  use({
    "romgrk/barbar.nvim",
    requires = { "kyazdani42/nvim-web-devicons"}
  })
  use("jlanzarotta/bufexplorer")
  use("sindrets/winshift.nvim")
  use("mrjones2014/smart-splits.nvim")
  use({ "anuvyklack/windows.nvim",
   requires = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
   },
   config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require('windows').setup()
   end
})

	-- LSP
	use("williamboman/nvim-lsp-installer")

	use("jose-elias-alvarez/null-ls.nvim")
	use("folke/lsp-colors.nvim")
	use("stevearc/dressing.nvim")

	use("fatih/vim-go")
  use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})
	use("mfussenegger/nvim-jdtls")
  use "lukas-reineke/cmp-rg"
  use("habamax/vim-godot")
  use("towolf/vim-helm")
  use({
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
  end,
})
  
	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/nvim-treesitter-refactor")

	-- Telescope
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-fzy-native.nvim")

	-- Snippets
	use("hrsh7th/vim-vsnip")
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- Colorscheme
	-- use("arcticicestudio/nord-vim")
	use("morhetz/gruvbox")
	use("folke/tokyonight.nvim")
  use({'shaunsingh/oxocarbon.nvim', run = './install.sh'})
  use({ "catppuccin/nvim", as = "catppuccin"})

	-- postman alternative
	use("diepm/vim-rest-console")

	-- Git
	use("lewis6991/gitsigns.nvim")
  use({"TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim"})

  -- Hydra
  use("anuvyklack/hydra.nvim")
  use("chaoren/vim-wordmotion")
  use("anuvyklack/vim-smartword")

	-- Comment
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Markdown Preview
	use({
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		run = "cd app && yarn install",
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
