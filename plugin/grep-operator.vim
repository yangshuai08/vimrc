" Grep operator: {{{
"
" Usage: normal mode run <leader>g{motion}; visual mode select 
" characters and run <leader>g; both situations will search the WORD
" recursively in current folder
"
" @ref <Learn Vimscript the hard way>
"
" }}}

nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
    let saved_unnamed_register = @@

    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif
    silent execute "grep! -R " . shellescape(@@) . " ."
    copen
    redraw!

    let @@ = saved_unnamed_register
endfunction
