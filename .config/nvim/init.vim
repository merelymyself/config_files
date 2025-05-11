:set number
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set autoindent

call plug#begin('~/.local/share/nvim/plugged') 
Plug 'dracula/vim', { 'as': 'dracula' } 
call plug#end()

colorscheme dracula

highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none
