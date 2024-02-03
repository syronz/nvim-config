return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  -- use 'rstacruz/vim-closer'

  -- easy motion
  -- use 'easymotion/vim-easymotion'

  -- golang
  --[[
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua' -- recommended if need floating window support
  use 'neovim/nvim-lspconfig'
  use 'nvim-treesitter/nvim-treesitter'
  --]]
  use 'neovim/nvim-lspconfig'

end)




