# -------------------------------------------------------------------
# Things i will forget
# -------------------------------------------------------------------
alias my-ip="/sbin/ifconfig -a | grep 'inet addr'"
alias pretty="echo '| python -mjson.tool'"
alias ubuntu-version="lsb_release -a"
alias grep-pid="sudo ps -ef | grep "
alias rename-and-replace-prefix="echo rename s/^flag_/newprefix_/ * ;"
alias mount-windows-partition="sudo mkdir /media/Windows-8; sudo mount /dev/sda1 /media/Windows-8"
alias tv-dir="cd /media/Windows-8/Users/David/Pictures/tv"
alias how-to-use-awk="git diff master --stat | grep -v '37\|config' | awk '{print $1}' | while read arq; do echo $arq foi lido; done"
alias killall-process-on-machine-apart-from-bash="echo ps -ef | grep -v 'UID\|bash\|ps\|java' | awk '{print $2}' | while read arq; do kill "$arq"; done"

# -------------------------------------------------------------------
# Chaordic
# -------------------------------------------------------------------
function curl-elasticsearch() { curl "http://localhost:9200/$1"; }
alias elasticsearch-start="~/code/elasticsearch-1.1.1/bin/elasticsearch"
alias docker-build="sudo docker build . -t NAME_OF_BUILD"
alias docker-run="sudo docker run -p 80:80 -p 9200:9200 -it -v /home/da/code/chaordic/search:/home/search/live NAME_OF_BUILD /bin/bash"
alias start-homolog-run="/bin/start-homolog.sh > /tmp/start-homolog.log | grep -v '\[etcd\[' | grep -v 'Key not found'"

# # -------------------------------------------------------------------
# # zsh and oh-my-zsh
# # -------------------------------------------------------------------
# ZSH=$HOME/.oh-my-zsh

# # Set name of the theme to load.
# # Look in ~/.oh-my-zsh/themes/
# ZSH_THEME="bira"
# plugins=(colored-man npm pep8 pip copyfile cp)
# # source $ZSH/oh-my-zsh.sh

# # -------------------------------------------------------------------
# # Init
# # -------------------------------------------------------------------
# # cd code
# # run z script
# # . ~/z.sh
# # echo "Did you know that:"; whatis $(ls /bin | shuf -n 1)
# # # syntax highlighting
# # source /home/da/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# -------------------------------------------------------------------
# Utils
# -------------------------------------------------------------------
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
function server() {
        local port="${1:-8000}"
        google-chrome "http://localhost:${port}/"
        ipython -m SimpleHTTPServer "$port"
}
alias php-local-server="php -S localhost:8080 -t "
# edit blog posts
function posts () { subl -a ~/code/mfbx9da4.github.io/_drafts/$1; }
alias naut="nautilus ."
alias ls="ls --color=always"
alias please="sudo"
alias .zshrc="subl ~/.zshrc"
alias defaults-modify="sudo subl /usr/share/applications/defaults.list"

# -------------------------------------------------------------------
# Sublime
# -------------------------------------------------------------------
alias s="subl"
alias snippets="subl /home/da/.config/sublime-text-3/Packages/User"
alias subl-config="subl /home/da/.config/sublime-text-3"

# -------------------------------------------------------------------
# Package management
# -------------------------------------------------------------------
alias apgi="sudo apt-get install"
alias apgu="sudo apt-get update"
alias apgup="sudo apt-get upgrade"
alias apgr="sudo apt-get remove"
alias apcs="sudo apt-cache show"
alias pipi="sudo pip install"

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------
git config --global credential.helper "cache --timeout=900000000"
alias git-set-credentials='git config --global user.email "david.adler@chaordicsystems.com"; git config --global user.name "David Adler"'
alias git-set-credentials='git config --global user.email "dalberto.adler@gmail.com"; git config --global user.name "David Adler"'
alias git-push-set-upstream-origin='`git push 2>&1 | grep git`'
alias commit="git commit -am "

alias ga='git add -A :/'
alias gp='git push'
alias gpo='git push origin'
alias gpm='git push origin master'
alias gpom='git push origin master'
alias gph='git push heroku'
alias gphm='git push heroku master'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gam='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gr='git rm'
alias gta='git tag -a -m'
alias gf='git reflog'
alias git-last-change='git diff HEAD^^'
alias git-reset-head='git reset --soft HEAD^'
alias git-track-new-branch='echo "git fetch; git branch --track branch-name origin/branch-name"'

# leverage an alias from the ~/.gitconfig
alias gh='git hist'
alias glg1='git lg1'
alias glg2='git lg2'
alias glg='git lg'


# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

function import-client {
    apikey=$1;
    from=${2:-search-dev}
    to=${3:-localhost}
    curl "http://$from:9200/chaordic_client_configuration/client/$apikey" > /tmp/config_$apikey;
    curl -XPUT "http://$to:9200/chaordic_client_configuration/client/$apikey" -d @/tmp/config_$apikey;
}


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export p=~/proj/proto-1

# go
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
