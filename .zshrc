export EDITOR='vim'

# -------------------------------------------------------------------
# zsh and oh-my-zsh
# -------------------------------------------------------------------

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH=/Users/DavidAdler/.oh-my-zsh
ZSH_THEME="bira"

# User configuration
plugins=(
  colored-man
  npm
  pep8
  pip
  copyfile
  cp
  git
  nvm # very slow to load
)
source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------------
# Path
# -------------------------------------------------------------------

# export PATH="/usr/lib/lightdm/lightdm"
# export PATH=$PATH:/usr/local/sbin
# export PATH=$PATH:/usr/local/bin
# export PATH=$PATH:/usr/sbin
# export PATH=$PATH:/usr/bin
# export PATH=$PATH:/sbin
# export PATH=$PATH:/bin
# export PATH=$PATH:/usr/games
# export PATH=$PATH:/usr/local/games
# export PATH=$PATH:/home/da/adt-bundle-linux-x86_64-20131030/sdk/tools/
# export PATH=$PATH:/home/da/Dropbox/programming/misc/git-sub-dir/
# export PATH=$PATH:/home/da/google_appengine/
# export PATH=$PATH:/home/da/google_appengine/
# export PATH=$PATH:/usr/local/lib/node_modules/karma/bin/
# export PATH=$PATH:/usr/local/lib/node_modules
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"


# -------------------------------------------------------------------
# run z script
# -------------------------------------------------------------------
. ~/z.sh

# -------------------------------------------------------------------
# Utils
# -------------------------------------------------------------------

alias python-local-server="python -m SimpleHTTPServer "
alias php-local-server="php -S localhost:8080 -t "

alias .zshrc="subl ~/.zshrc"
alias sourcezshrc="source ~/.zshrc"
alias vhosts="sudo vim /etc/hosts"
function trash() {mv $1 ~/.Trash/}

# -------------------------------------------------------------------
# Sublime
# -------------------------------------------------------------------
alias s="subl"
alias snippets="subl /home/da/.config/sublime-text-3/Packages/User"
alias subl-config="subl /home/da/.config/sublime-text-3" # linux
alias subl-config="subl ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/"

# -------------------------------------------------------------------
# Linux Package management
# -------------------------------------------------------------------
# alias apgi="sudo apt-get install"
# alias apgu="sudo apt-get update"
# alias apgup="sudo apt-get upgrade"
# alias apgr="sudo apt-get remove"
# alias apcs="sudo apt-cache show"
# alias pipi="sudo pip install"

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------
git config --global credential.helper "cache --timeout=900000000"
alias git-set-credentials='git config --global user.email "dalberto.adler@gmail.com"; git config --global user.name "mfbx9da4"'

alias ga='git add'
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
alias gtree='git log --graph --decorate --pretty=oneline --abbrev-commit'
alias git-last-change='git diff HEAD^^'
alias git-reset-head='git reset --soft HEAD^'
alias git-track-new-branch='echo "git fetch; git branch --track branch-name origin/branch-name"'

# User configuration

# start ssh agent in background
# eval "$(ssh-agent -s)"


# -------------------------------------------------------------------
# Java
# -------------------------------------------------------------------

# java
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# # Apache Ant
# export ANT_HOME="/Users/da/apache-ant-1.10.1"

# export PATH="$PATH:$ANT_HOME/bin"

# junit
# export JUNIT_HOME="$HOME/java"
# export PATH="$PATH:$JUNIT_HOME"
# export CLASSPATH="$CLASSPATH:$JUNIT_HOME/junit-4.12.jar:$JUNIT_HOME/hamcrest-core-1.3.jar"

# Add ~/algs4/bin to the PATH
# export PATH=$PATH:$HOME/algs4/bin

# -------------------------------------------------------------------
# NVM
# -------------------------------------------------------------------

# alternative to zsh plugin
alias nvminit='. ~/.nvm/nvm.sh'

# -------------------------------------------------------------------
# Go
# -------------------------------------------------------------------

export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


