# !/bin/bash
DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd )"
cat "${DIR}/.vimrc-$1" "${DIR}/.vimrc-base" > ~/.vimrc
