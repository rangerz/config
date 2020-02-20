#!/bin/bash

# MUST Install in ~/config
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd )"

# Shell Config
SHRC=~/.bashrc
case $SHELL in
*/zsh)
    SHRC=~/.zshrc
    ;;
*/bash)
    SHRC=~/.bashrc
    ;;
*)
    echo "Unknown SHELL env"
esac
echo "test -e $DIR/.sh_profile && source $DIR/.sh_profile" >> $SHRC
echo "Apply Shell Config: exec \$SHELL"

# Vim Config
echo "source $DIR/.vimrc" >> ~/.vimrc

# Git Config
git config --add --global include.path "$DIR/.gitconfig"

# Git Config's DiffMerge
# https://sourcegear.com/diffmerge/webhelp/sec__git.html
if [[ "$OSTYPE" == "darwin"* ]]; then
    git config --add --global include.path "$DIR/.gitconfig_diffmerge_macosx"
fi

# SSH Config
mkdir -p ~/.ssh/mux
cp -f $DIR/.ssh_config ~/.ssh/config
