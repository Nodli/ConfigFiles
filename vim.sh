#!/bin/bash

cd $(dirname $0)
cd source

executable_path="./../linux/makerun.sh"
session_path="./../linux/session.vim"

vim -c ":nnoremap <F5> :w<CR> :!${executable_path}<CR>" \
    -c ":autocmd VimEnter * if filereadable(\"${session_path}\") | :source ${session_path} | else | :next **/*.h **/*.cpp **/*.c **/*.inl | endif" \
    -c ":autocmd VimLeave * :mksession! ${session_path}"
