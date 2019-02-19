" code syntax highlighting + colorscheme + font
syntax on
colorscheme desert

" disable line breaking
set nowrap

" gvim gui configuration
set guioptions=
set guioptions+=m

" insert mode shortcuts
inoremap jk <Esc>

" updating find path to current path
set path=$PWD/**

" display matches when auto completing file names in the status bar
set wildmenu

" remove trailing white spaces / tabs when saving
" e avoids showing an error message when no trailing white spaces / tabs is found
autocmd BufWritePost * %s/\s\+$//e

" autosave all files on lost focus (ignores complains for untitled buffers)
autocmd FocusLost * silent! wa

" allows buffers to be hidden without saving
set hidden

" set tabs width to 4
"set shiftwidth=4
"set tabstop=4

" copy / cut / paste to system clipboard
set clipboard=unnamedplus
