# !/bin/bash
DIR="${HOME}/vim-config"
echo "
call plug#begin('~/.vim/plugged')
$(cat "${DIR}/.vimrc-base-plugins")
$(cat "${DIR}/.vimrc-$1-plugins")
call plug#end()
$(cat "${DIR}/.vimrc-base")
$(cat "${DIR}/.vimrc-$1")
" > ~/.vimrc
