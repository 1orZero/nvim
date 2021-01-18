

" Plugin Config
"-------------------------------------------------------------------------------
" Conquer of Completion
runtime coc.vim

" GCC Comment line out
autocmd FileType apache setlocal commentstring=#\ %s


" Fuzzy Seach
nnoremap <C-p> :FZF<CR>
" nnoremap <Leader>f :Rg<CR>
nnoremap <C-F> :Rg<CR>
" nnoremap <silent> <Leader>b :Buffers<CR>
" fzf settings
" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Match only file content not the file name
command! -bang -nargs=* Rg
            \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>),
            \ 1,
            \ fzf#vim#with_preview({'options': '--delimiter : --nth 2.. --layout=reverse --info=inline'}), <bang>0)

" Only use this when you have bat installed (syntax highlight)
" command! -bang -nargs=? -complete=dir Files
"             \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Vim-AutoFormat
noremap <F3> :Autoformat<CR>
au BufWrite * :Autoformat

"-------------------------------------------------------------------------------
" Plugin Config End


