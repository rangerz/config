export CLICOLOR=1
export EDITOR=/usr/bin/vim

#Set default blocksize for ls, df, du
export BLOCKSIZE=1k

mac_only() {
    alias ls='ls -GFh'
    alias ll='ls -FGlAhp'

    #Oracle Java
    # https://www.java.com/en/download/
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home"
    export CLASS_PATH="$JAVA_HOME/lib"
    export PATH=".:$PATH:$JAVA_HOME/bin"

    #Anaconda3
    # brew cask install anaconda
    alias acEnv='export PATH=$HOME/anaconda/bin:$PATH'

    #Sublime
    alias edit='subl'

    #DNS
    alias editHosts='sudo vim /private/etc/hosts'
    alias flushDNS='dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

    alias brewery='brew update && brew upgrade && brew cleanup'
    trash () { command mv "$@" ~/.Trash ; }
    alias f='open -a Finder ./'
}

linux_only() {
    alias ls='ls -GFh --color'
    alias ll='ls -FGlAhp --color'
    alias aptup='sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y'
    alias free='free -h'
    alias psmem='ps auxf | sort -nr -k 4'
    alias psmem10='ps auxf | sort -nr -k 4 | head -10'
    alias pscpu='ps auxf | sort -nr -k 3'
    alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
    alias cpuinfo='lscpu'
}

if [[ "$OSTYPE" == "darwin"* ]]; then
    mac_only
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    linux_only
else
    echo "Unknown"
fi

# -----------------------------
# MAKE TERMINAL BETTER
# -----------------------------
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias less='less -FSRXc'
cd() { builtin cd "$@"; ls -al; }
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias ~="cd ~"
alias c='clear'
alias q='exit'
alias which='type -all'
alias path='echo -e ${PATH//:/\\n}'
alias show_options='shopt'
alias fix_stty='stty sane'
alias cic='set completion-ignore-case On'
mcd () { mkdir -p "$1" && cd "$1"; }
alias sudo='sudo '
alias vi='vim'
alias wget='wget -c'
alias untar='tar -zxvf '
alias df='df -H'
alias du='du -ch'
alias resh='source ~/.bash_profile'
alias qf="find . -name "
alias myip='curl ip.gs' # curl ipinfo.io/ip
alias netCons='lsof -i'
alias openPorts='sudo lsof -i | grep LISTEN'
alias lsock='sudo lsof -i -P'
alias lsockU='sudo lsof -nP | grep UDP'
alias lsockT='sudo lsof -nP | grep TCP'
alias sha='shasum -a 256 '
alias ping='ping -c 5'
alias h='history'
alias hg='history | grep '

mans () {
  man $1 | grep -iC2 --color=always $1 | less
}
zipf () { zip -r "$1".zip "$1" ; }
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1     ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar e $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xf $1      ;;
      *.tbz2)      tar xjf $1     ;;
      *.tgz)       tar xzf $1     ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)     echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
