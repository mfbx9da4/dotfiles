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
function curl-elasticsearch() {curl "http://localhost:9200/$1"}
alias elasticsearch-start="~/code/elasticsearch-1.1.1/bin/elasticsearch"
alias docker-build="sudo docker build . -t NAME_OF_BUILD"
alias docker-run="sudo docker run -p 80:80 -p 9200:9200 -it -v /home/da/code/chaordic/search:/home/search/live NAME_OF_BUILD /bin/bash"
alias start-homolog-run="/bin/start-homolog.sh > /tmp/start-homolog.log | grep -v '\[etcd\[' | grep -v 'Key not found'"

# -------------------------------------------------------------------
# zsh and oh-my-zsh
# -------------------------------------------------------------------
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="bira"
plugins=(colored-man npm pep8 pip copyfile cp)
source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------------
# Init
# -------------------------------------------------------------------
cd code
# run z script
. ~/z.sh
echo "Did you know that:"; whatis $(ls /bin | shuf -n 1)
# syntax highlighting
source /home/da/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
function posts () {subl -a ~/code/mfbx9da4.github.io/_drafts/$1}
alias naut="nautilus ."
alias ls="ls --color=always"
alias -s html=google-chrome
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

# -------------------------------------------------------------------
# More zsh
# -------------------------------------------------------------------
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