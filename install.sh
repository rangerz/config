#!/bin/sh
# MUST Install in ~/config

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Shell Config
echo ". ~/config/.sh_profile" >> ~/.profile
case $SHELL in
*/zsh)
    echo "test -e ~/.profile && source ~/.profile" >> ~/.zshrc
    ;;
*/bash)
    echo "test -e ~/.profile && source ~/.profile" >> ~/.bashrc
    ;;
*)
    echo "Unknown SHELL env"
esac
echo "Apply Shell Config: exec \$SHELL"

# Vim Config
echo "source ~/config/.vimrc" >> ~/.vimrc

# Git Config
git config --add --global include.path "~/config/.gitconfig"
if [[ "$OSTYPE" == "darwin"* ]]; then
    git config --add --global include.path "~/config/.gitconfig_diffmerge"
fi

# SSH Config
mkdir -p ~/.ssh/
cp -f ~/config/.ssh_config ~/.ssh/config
