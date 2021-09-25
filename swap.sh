# !/bin/bash
DIR="${HOME}/env/vim-config"
if [ -f "${DIR}/.vimrc-$1-plugins" ]; then
    echo "
call plug#begin('~/.vim/plugged')
$(cat "${DIR}/.vimrc-base-plugins")
$(cat "${DIR}/.vimrc-$1-plugins")
call plug#end()
$(cat "${DIR}/.vimrc-base")
$(cat "${DIR}/.vimrc-$1")
" > ~/.vimrc
else
    cp "${DIR}/.vimrc-$1" ~/.vimrc
fi
