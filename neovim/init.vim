" note that I entered nord.nvim and changed settings to allow for a transparent nvim background. Go to the comment Options:, then use -- to comment out everything except the contents of the if statement.
:set number
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set autoindent

" Plugins will be downloaded under the specified directory.
call plug#begin()
" Rust lsp
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'
" Rust autocomplete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" vsnip, necessary for the autocomplete
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Rust Debugging
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'
" Nord Theme
Plug 'shaunsingh/nord.nvim'
" Nice status bar
Plug 'vim-airline/vim-airline'
" File tree
Plug 'preservim/nerdtree'

" Nerd Tree toggle:
nnoremap <C-t> :NERDTreeToggle<CR>

" shorcut so that ctrl+1 makes new tab
nnoremap <C-w> :tabnew<CR>

call plug#end()

:colorscheme nord

set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'
-- please tell me this works
  require'lspconfig'.rust_analyzer.setup({})

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })
	-- rust-tools, I hope.
	require('rust-tools').setup({})
  	require('rust-tools.inlay_hints').set_inlay_hints()

EOF
