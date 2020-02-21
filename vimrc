" Part 1 : GENERAL SETTINGS -------------------------------- {{{
syntax on
filetype plugin indent on
" (1) 3rd party plugin ------------- {{{
" theme: dracula, onedark {{{
"packadd! dracula
"colorscheme dracula
" }}}
" theme in colors folder {{{
"set background=dark "dark or light
colorscheme molokai
"let g:airline_theme = "papercolor"
" }}}

" brew install fzf
set rtp+=/usr/local/opt/fzf

" emmet-vim
let g:user_emmet_leader_key = ','
" set filetype to javascript.jsx
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

" auto-pairs
let g:AutoPairsShortcutToggle = ''

" }}}

" (2) Basic settings --------------- {{{
"  set <leader>
let mapleader = ","
let maplocalleader = ","

" always start editing with all folds closed
set foldlevelstart=0

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

" match time (0.1s per unit)
set matchtime=5

"
set linebreak

" visual autocomplete for command menu
set wildmenu

" show relative line numbers
set relativenumber

" show current position
" set ruler
" always display statusline, absolute path to the file(truncated if necessary), switch to the right side,buffer number, current line and column, separator, total lines
set laststatus=2
set statusline=%.20F
set statusline+=%=
set statusline+=%n:
set statusline+=[%l-%c
set statusline+=/
set statusline+=%L]

" highlight the search result on which you’ll land as you type it, and once you’ve pressed Enter to run your search, highlighting all of the matches
set incsearch
set hlsearch

" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" convert tabs to space
set expandtab

" align by >> or <<
set shiftround
" }}}
" }}}

" Part 2: KEY MAPPINGS ------------------------------------- {{{
" Edit my Vimrc file
nnoremap <leader>ev :vsplit ~/.vim/vimrc<CR>

" Source my Vimrc file
nnoremap <leader>sv :source ~/.vim/vimrc<CR>

" word to uppercase
inoremap <c-u> <esc>viwU<esc>Wa

" surround the word in quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" list buffers and jump to a chosen one
nnoremap  <leader>b :ls<CR>:b<space>

" move vertically by visual line (don't skip wrapped lines)
" nnoremap j gj
" nnoremap k gk

" toggle highlight, also see :noh
"nnoremap <leader>h :set hlsearch!<CR>

" switch window
nnoremap <leader>w <c-w>w

" switch buffer
nnoremap <leader><tab> <c-^>

" external grep current word in current directory
"nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>:redraw!<cr>

" 3rd party plugin mapping
" fzf mapping
nnoremap <silent> <c-p> :w \| FZF<CR>
" Nerd Tree mapping
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
" }}}

" Part 3: FILETYPE-SPECIFIC SETTINGS ----------------------- {{{
" (1) Javascript file settings ----- {{{
augroup filetype_javascript
    autocmd!
    " comment code
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>

    autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
augroup END
" }}}

" (2) Python file settings --------- {{{
augroup filetype_python
    autocmd!
    " comment code
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>

    " enable all python syntax highlighting features
    let python_highlight_all = 1
    " 3rd party plugin customization
    let g:python_pep8_indent_multiline_string = -2
    let g:python_pep8_indent_hang_closing = 1

augroup END
" }}}

" (3) HTML file settings ----------- {{{
augroup filetype_html
    autocmd!
    " fold tag
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
" }}}

" (4) css/scss file settings ----------- {{{
augroup filetype_css
    autocmd!
    autocmd FileType css,scss setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
augroup END
" }}}

" (5) Markdown file settings ------- {{{
augroup filetype_markdown
    autocmd!
    " for H1 and H2
    "autocmd FileType markdown :iabbrev <buffer> === ======
    "autocmd FileType markdown :iabbrev <buffer> --- ------
    " change header
    "onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
    "onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END
" }}}

" (6) Vimscript file settings ------ {{{
augroup filetype_vim
    autocmd!
    " comment code
    autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
    " use the marker method of folding for any vimscript files
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" }}}
