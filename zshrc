# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
fpath=($HOME/.zsh/func $fpath)
typeset -U fpath
#Aliases
alias restartApache='sudo apachectl restart'
alias stopApache='sudo apachectl stop'
alias startApache='sudo apachectl start'

alias art='php artisan'

alias trash="sudo rm -rf ~/.Trash/*"

alias server='open http://localhost:8000 && python -m SimpleHTTPServer'

alias sites='cd ~/Sites/'
alias desk='cd ~/Desktop/'
alias ..='cd ../'
alias ...='cd ../../'
alias ll="ls -al"

alias docs='cd /Users/anthonybrown/Documents'
alias zsh='cd ~/.oh-my-zsh'

alias updatePHP='curl -s http://php-osx.liip.ch/install.sh | bash -s 5.4'
alias php5='/usr/local/bin'

alias b='git clone git://github.com/JeffreyWay/Backbone--RequireJS--and-Testem-Boilerplate-Project.git'

function proj() {cp -R /Users/anthonybrown/Dropbox/Code/basic_template `pwd`; mv basic_template $1; }

function starterTemplate() {
 git clone https://github.com/anthonybrown/My-Starting-Template.git $@
}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pixel67"
#ZSH_THEME="dpoggi"
#ZSH_THEME="fishy"
#ZSH_THEME="lambda"
#ZSH_THEME='pygmalion'
#ZSH_THEME="norm"
#ZSH_THEME="bira"
#ZSH_THEME="candy"
#ZSH_THEME="crunch"
#ZSH_THEME="dogenpunk"
#ZSH_THEME="darkblood"
#ZSH_THEME="jnrowe"
#ZSH_THEME="robbyrussell"




# Example aliases
# alias zshconfig="mate ~/.zshrc"
 alias ohmyzsh="cd ~/.oh-my-zsh && sublime ."

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git)

# NPM Tab Completion
if npm -v >/dev/null 2>&1; then
  . <(npm completion)
fi

source $ZSH/oh-my-zsh.sh

ulimit -n 1000

# Customize to your needs...

#. /Users/anthonybrown/z/z.sh

export PATH="/usr/local/php5/bin:$PATH"

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

export PATH="/usr/local/mysql/bin:$PATH"

export NODE_PATH="/usr/local/bin/node"

export PATH="/usr/local/bin:$PATH"

export PATH="/usr/local/share/npm/bin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"

#export PATH="/usr/local/share/python:$PATH"

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

export MONGO_PATH="/usr/local/mongodb"
export PATH=$PATH:$MONGO_PATH/bin

export EDITOR=vim

set -o vi
