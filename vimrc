:set number " Show line numbers
:set ruler " Show column number

" Merlin stuff
execute pathogen#infect()
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
let g:syntastic_ocaml_checkers = ['merlin']

set runtimepath^=~/.config/nvim/bundle/ctrlp.vim " CtrlP initialization

" CtrlP shortcuts
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set t_Co=256   " This is may or may not needed.

set background=light
colorscheme PaperColor

" Make split switching a lil easier
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Remap escape key
:imap jj <Esc>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
