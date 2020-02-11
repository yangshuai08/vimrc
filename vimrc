" put dracula theme in ~/.vim/pack/my/opt/dracula
packadd! dracula
colorscheme dracula

" brew install fzf
set rtp+=/usr/local/opt/fzf
nnoremap <silent> <c-p> :w \| FZF<cr>

" enable syntax highlighting
syntax on

" indent when moving to the next line while writing code
set autoindent

" highlight the 80th column 
set colorcolumn=80

" highlight current line
set cursorline

" tabstop is the number of spaces a tab counts for. So, when Vim opens a file and reads a <TAB> character, it uses that many spaces to visually show the <TAB>.
set tabstop=4

" softabstop is the number of spaces a tab counts for when editing. So this value is the number of spaces that is inserted when you hit <TAB> and also the number of spaces that are removed when you backspace.
set softtabstop=4

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show the maching part of the pair for [] {} and ()
set showmatch

" 
set linebreak

" visual autocomplete for command menu
set wildmenu

" show relative line numbers
set relativenumber

" show current position
set ruler

" highlight search results
set hlsearch

" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" enable all python syntax highlighting features
let python_highlight_all = 1

" list buffers and jump to a chosen one
nnoremap <Leader>b :ls<CR>:b<Space>

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk

" 
filetype plugin indent on
