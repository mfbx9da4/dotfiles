# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"
plugins=(colored-man npm pep8 pip copyfile cp)
source $ZSH/oh-my-zsh.sh

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

cd code

# run z script
. ~/z.sh

function server() {
        local port="${1:-8000}"
        google-chrome "http://localhost:${port}/"
        ipython -m SimpleHTTPServer "$port"
}

echo "Did you know that:"; whatis $(ls /bin | shuf -n 1)

function posts () {subl ~/code/github-io/_drafts/$1}

alias s="subl"
alias ubuntu-version="lsb_release -a"
alias grep-pid="sudo ps -ef | grep "
alias rename-and-replace-prefix="echo 'rename \'s/^flag_/newprefix_/\' *' "
alias mount-windows-partition="sudo mkdir /media/Windows-8; sudo mount /dev/sda1 /media/Windows-8"
alias tv-dir="cd /media/Windows-8/Users/David/Pictures/tv"
alias naut="nautilus ."
alias php-local-server="php -S localhost:8080 -t "
alias .zshrc="subl ~/.zshrc"
alias defaults-modify="sudo subl /usr/share/applications/defaults.list"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls --color=always"
alias -s html=google-chrome
alias apgi="sudo apt-get install"
alias apgu="sudo apt-get update"
alias apgup="sudo apt-get upgrade"
alias apgr="sudo apt-get remove"
alias pipi="sudo pip install"
alias please="sudo"
alias snippets="subl /home/da/.config/sublime-text-3/Packages/User"
alias subl-config="subl /home/da/.config/sublime-text-3"
alias my-ip="/sbin/ifconfig -a | grep 'inet addr'"
alias elasticsearch-start="~/code/elasticsearch-1.1.1/bin/elasticsearch"
alias pretty="echo '| python -mjson.tool'"



# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------

git config --global credential.helper "cache --timeout=900000000"
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
alias git-track-new-branch='echo "git fetch; git branch --track branch-name origin/branch-name"'

# leverage an alias from the ~/.gitconfig
alias gh='git hist'
alias glg1='git lg1'
alias glg2='git lg2'
alias glg='git lg'


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/da/adt-bundle-linux-x86_64-20131030/sdk/tools/:/home/da/Dropbox/programming/misc/git-sub-dir/:/home/da/google_appengine/:/home/da/google_appengine/:/usr/local/lib/node_modules/karma/bin/"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"