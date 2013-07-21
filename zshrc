# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Options
setopt NO_BEEP

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kennethreitz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git screen)

alias rvm-prompt=$HOME/.rvm/bin/rvm-prompt
eval "$(hub alias -s)" 
source $ZSH/oh-my-zsh.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Customize to your needs...
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:/Users/Max/.rvm/gems/ruby-1.9.3-p194/bin:/Users/Max/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/Max/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/Max/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:/opt/local/bin:/Applications/Eyelink
# Scala sbt compiler options
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M"

alias -s html=vim js=vim py=vim  scss=vim  css=vim erb=vim coffee=vim scala=vim m=vim 
alias railsapps="cd ~/Documents/Web/RailsApps"
alias gems="cd ~/Documents/Web/Gems"
alias nf="nocorrect nf"
alias rspec="rspec"
alias valgrind="valgrind"
alias rm="rm -i"

# Git aliases
alias gpum="git pull upstream master"
alias gmm="git merge master"
alias gc="git checkout"
alias gpo="git push origin"

JASMINE_BROWSER="chrome"

# Python virtualenv configuration
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

# Activate a virtualenv environment
alias scicompenv="source ~/.virtualenvs/scicomputing/bin/activate"
alias hackenv="source ~/.virtualenvs/hackenv/bin/activate"

# Strip the following data before uploading to github
export SAUCE_USERNAME=0
export SAUCE_ACCESS_KEY=0
