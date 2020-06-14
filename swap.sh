# !/bin/bash
DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd )"
echo "
call plug#begin('~/.vim/plugged')
$(cat "${DIR}/.vimrc-base-plugins")
$(cat "${DIR}/.vimrc-$1-plugins")
call plug#end()
$(cat "${DIR}/.vimrc-base")
$(cat "${DIR}/.vimrc-$1")
" > ~/.vimrc
