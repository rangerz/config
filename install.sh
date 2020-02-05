#!/bin/sh
# MUST Install in ~/config

# Shell Config
echo ". ~/config/.sh_profile" >> ~/.profile
case $SHELL in
*/zsh)
    echo ". ~/.profile" >> ~/.zprofile
    ;;
*/bash)
    echo ". ~/.profile" >> ~/.bash_profile
    ;;
*)
    echo "Unknown SHELL env"
esac
echo "Apply Shell Config: source ~/.profile"

# Vim Config
echo "source ~/config/.vimrc" >> ~/.vimrc

# Git Config
git config --add --global include.path "~/config/.gitconfig"
if [[ "$OSTYPE" == "darwin"* ]]; then
    git config --add --global include.path "~/config/.gitconfig_diffmerge"
fi

# SSH Config
cp -f ~/config/.ssh_config ~/.ssh/config
