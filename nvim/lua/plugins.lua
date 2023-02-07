-- nvim/lua/plugins.lua
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- Lsp config
    use {
     "williamboman/nvim-lsp-installer",
     config = function()
         require("nvim-lsp-installer").setup {
             automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
             ui = {
                 icons = {
                     server_installed = "✓",
                     server_pending = "➜",
                     server_uninstalled = "✗"
                 }
             }
         }
     end
    }
--    use 'neovim/nvim-lspconfig'
    use {
        'neovim/nvim-lspconfig',
--        require'lspconfig'.solargraph.setup{
--            on_attach = on_attach,
--            flags = lsp_flags,
--            opts = { noremap=true, silent=true },
--            root_dir = function() return vim.loop.cwd()
--            end
 --       }
    }
	use 'hrsh7th/cmp-nvim-lsp'
    use { 'L3MON4D3/LuaSnip' }
    use {
        'hrsh7th/nvim-cmp',
        config = function ()
            require'cmp'.setup {
                snippet = {
                    expand = function(args)
                        require'luasnip'.lsp_expand(args.body)
                    end
                },

                sources = {
                    { name = 'luasnip_choice' },
                    -- more sources
                },
            }
        end
    }
    use {
        'doxnit/cmp-luasnip-choice',
        config = function()
            require('cmp_luasnip_choice').setup({
                auto_open = true, -- Automatically open nvim-cmp on choice node (default: true)
            });
        end,
    }
    use { 'saadparwaiz1/cmp_luasnip' }
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lua'

	-- Markdown Preview
	use 'iamcco/markdown-preview.nvim'

	-- lspsaga beautify the windows of lsp
	use {
		'tami5/lspsaga.nvim',
		config = function()
			-- require('conf.lspsaga-conf')
			require('lspsaga').setup{}
		end
	} 

	-- Dashboard
	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end
	}

	-- Comment plugin
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup{}
		end
	}

	use 'xiyaowong/nvim-cursorword'

	use({
		"NTBBloodbath/galaxyline.nvim",
		-- your statusline
		config = function()
			require("galaxyline.themes.eviline")
		end,
		-- some optional icons
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	})

	use {'akinsho/bufferline.nvim',
	tag = "v2.*",
	requires = 'kyazdani42/nvim-web-devicons',
	config = function()
		require('bufferline').setup{}
	end
}

-- Dirctory Tree
use {
	'kyazdani42/nvim-tree.lua',
	requires = {
		'kyazdani42/nvim-web-devicons', -- optional, for file icon
	},
	tag = 'nightly', -- optional, updated every week. (see issue #1193)
	config = function()
		require('nvim-tree').setup{}
	end
}


use {
	'nvim-telescope/telescope.nvim',
	requires = {
		"nvim-lua/plenary.nvim", -- Lua development module
		"BurntSushi/ripgrep", -- characters finding
		"sharkdp/fd" -- file search
	},
	config = function()
		require('telescope').setup{}
	end
}
--moonfly is a dark charcoal theme for classic Vim & modern Neovim.
use  {"bluz71/vim-moonfly-colors", as= "moonfly" }

use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
use {
  'ojroques/nvim-lspfuzzy',
  requires = {
    {'junegunn/fzf'},
    {'junegunn/fzf.vim'},  -- to enable preview (optional)
  },
}
end)
