" theme
syntax on
" put dracula theme in ~/.vim/pack/my/opt/dracula
packadd! dracula
colorscheme dracula

" brew install fzf
set rtp+=/usr/local/opt/fzf
nnoremap <silent> <c-p> :w \| FZF<cr>

" python setting
set autoindent
set colorcolumn=80
set cursorline

" general setting
set linebreak
set relativenumber
set expandtab
set shiftwidth=4
set tabstop=4
