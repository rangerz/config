# config

Ranger's Shell Config



### Install Config

```
cd ~
git clone https://github.com/rangerz/config.git
~/config/install.sh
exec $SHELL
```



### Feature

- bash profile
- git config
  - alias
  - diffmerge alias
  - global gitignore
- vimrc
  - TODO: survey https://github.com/amix/vimrc



# My Mac Env.

### App Store

```
Microsoft Office 365 - Word, Excel, PowerPoint, Outlook, OneNote, OneDrive
Microsoft Remote Desktop
CatchMouse
WeChat
LINE
```



### Terminal

```
# Xcode
xcode-select --install

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Common Packages
brew install \
    wget \
    git-extras \
    python \ # Python 3 (latest)
    php \
    go \
    colordiff \
    node \
    pv \
    expect \
    multitail \
    mas

# Install Apps
brew cask install \
    aerial \
    appcleaner \
    caffeine \
    cheatsheet \
    firefox \
    microsoft-edge \
    google-chrome \
    spectacle \
    vlc \
    gimp \
    the-unarchiver \
    teamviewer \
    microsoft-teams \
    diffmerge \
    phpstorm \
    mysqlworkbench \
    azure-data-studio \
    teamviewer \
    iterm2 \
    visual-studio-code \
    typora \
    notion \ # bye evernote ...
    docker \
    postman \
    responsively


# FileZilla (no brew support ...)
open https://filezilla-project.org/download.php?type=client

# Update Anything
mas upgrade
brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew doctor
```



### iTerm2

```
# Install iTerm2
brew cask install iterm2

# Term2 Settings
iTerm2 > Make iTerm2 Default Term
Preferences > Profiles > Terminal > Report Terminal Type > xterm-256color
Preferences > Profiles > Colors > Color Presets > Dark Background

# Fonts - Monaco Nerd Font
https://github.com/Karmenzind/monaco-nerd-fonts/raw/master/fonts/Monaco%20Nerd%20Font%20Complete.otf
Preferences > Profiles > Text > Font > Monaco Nerd Font

# Silence bell
Preferences > Profiles > Terminal > Notifications > Silence bell

# Shell Integration
https://www.iterm2.com/documentation-shell-integration.html
iTerm2 > Install Shell Integration
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
```



### ZSH

```
# Install zsh
brew install zsh

# Setup zsh
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells 
chsh -s /usr/local/bin/zsh
```



### on-my-zsh

```
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Update
omz update

# Built-in Plugins
# Edit ~/.zshrc:
plugins=(
  aws
  brew
  composer
  colored-man-pages
  colorize
  git
  gitfast
  git-prompt
  docker
  docker-compose
  extract
  pip
  python
  osx
  vscode
  z
)

brew install \
    zsh-syntax-highlighting \
    zsh-autosuggestions \
    zsh-completions

# Edit ~/.zshrc
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Reset zsh
rm -f ~/.zcompdump; compinit
```



### Git + GPG

```
git config --global user.name "Your Name"
git config --global user.email "Your Email"

# Git GPG
# https://github.com/muwenzi/Program-Blog/issues/133
brew install gpg
gpg --gen-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --output public-key.txt --export E68AFE14FC29E92414C2E6AF731D0E574165A8D
gpg --armor --output private-key.txt --export-secret-keys

git config --global user.signingkey E68AFE14FC29E92414C2E6AF731D0E574165A8C0
git config --global commit.gpgsign true
```



### SSH Config

```
mkdir ~/.ssh/mux

# Edit ~/.ssh/config
Host for.long.domain
    ControlPath ~/.ssh/mux/%C

Host *
    ControlMaster auto
    ControlPath ~/.ssh/mux/%r@%h:%p
    ControlPersist yes
```



### SSH with password (exssh)

```
brew install expect
curl -O https://gist.githubusercontent.com/rangerz/9e83514acf32ec4b094d0f16ce618ff8/raw/99c98d2d719b119d6eb8fc171762fd2f73d1fd5b/exssh
chmod +x exssh
sudo mv exssh /usr/local/bin/exssh

# Usage
# exssh user@localhost password
```



# Mac Setting

### Trackpad (Macbook)

```
Point & Click
[x] Look up & data detectors
[o] Secondary click - Click or tap with two fingers
[o] Tap to click

Scroll & Zoom
[x] Scroll direction: Natural
[o] Zoon in or out
[x] Smart zoom
[x] Rotate

More Gestures
[o] All

Three finger drag
Accessibility -> Pointer Control -> Trackpad Options -> Enable dragging -> three finger drag
https://support.apple.com/en-us/HT204609

```



### Screenshots Folder

```
Screemshots Folder
defaults write com.apple.screencapture location ~/Desktop/Screenshots
killall SystemUIServer
```



### Keyboard

```
# 輸入法 (Typing)
Keyboard -> Input Source -> Select the previous input source -> Zhuyin
Use the Caps Lock key to switch to and from U.S.

Keyboard -> Text
[x] Capitalize words outomatically
Use smart quotes and dashes
"abc"
'abc'

Shift + Insent => Paste
https://superuser.com/questions/703162/shift-insert-to-paste-in-mac-os-x
https://apple.stackexchange.com/questions/32297/how-can-i-reassign-the-copy-paste-keyboard-shortcuts

Support home and end like unix
https://damieng.com/blog/2015/04/24/make-home-end-keys-behave-like-windows-on-mac-os-x
```



### ulimit

https://medium.com/mindful-technology/too-many-open-files-limit-ulimit-on-mac-os-x-add0f1bfddde



### Double Screen Switch

https://medium.com/thevelops-tech-blog/how-to-switch-focus-between-screens-in-macos-21c6f02883a6

```
# Download and unzip Catch Mouse
wget https://github.com/round/CatchMouse/archive/master.zip

# install Karabiner Elements
brew cask install karabiner-elements

```

