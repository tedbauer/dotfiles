:set number relativenumber
:set ruler

let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

set completeopt=menu

:augroup numbertoggle
:  autocmd!
:  autocmd WinEnter,BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd WinLeave,BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

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

set background=dark
colorscheme seoul256

" Make split switching easier (for left and right).
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Remap escape key
:imap jk <Esc>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

set termguicolors

set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2

autocmd! BufNewFile,BufReadPre,FileReadPre *.c so ~/.config/nvim/c.vim

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

autocmd BufWritePre * %s/\s\+$//e
