eval "$(rbenv init -)"

# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Options
setopt NO_BEEP

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="maxgillett"
plugins=(git screen)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/Cellar/git:/usr/local/git/bin:/Library/Developer/CommandLineTools/usr/bin/:/usr/local/Cellar/binutils/2.25.1/x86_64-apple-darwin14.4.0/bin:/usr/local/cuda/bin:/usr/local/cuda/lib:/Applications/Postgres.app/Contents/MacOS/bin:/Users/Max/:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:~/.cabal/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/Applications/Eyelink:/usr/local/texlive/2013basic/bin/x86_64-darwin:/Users/Max/luapower:~/bin:/Applications/MATLAB_R2015b.app/bin

export DYLD_LIBRARY_PATH=/usr/local/Cellar/boost/1.57.0/lib:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

export GREP_OPTIONS="--color"
export HISTCONTROL=ignorespace

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Misc aliases
alias -s html=vim js=vim py=vim scss=vim  css=vim erb=vim coffee=vim scala=vim m=vim 
alias rm="rm -i"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC' --intf=rc
alias c='clear'

# Git aliases
alias gco="git checkout"
alias gpum="git pull upstream master"
alias ga="git add" 
alias gcm="git commit -m"

# Rspec aliases
alias zspec="zeus rspec spec"

# Browser testing
export JASMINE_BROWSER="chrome"
export SAUCE_USERNAME=0
export SAUCE_ACCESS_KEY=0

# Autossh
export AUTOSSH_PORT=0

##########################
## PYTHON CONFIGURATION ##
##########################

# Include packages installed via homebrew (e.g. pyqt)
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# OpenCV libraries
export PYTHONPATH=/Library/Caches/Homebrew/opencv--git/lib/python2.7/site-packages:$PYTHONPATH

# Include Caffe library
export PYTHONPATH=~/caffe/python:$PYTHONPATH

# Python virtualenv configuration
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

# Activate a virtualenv environment
alias scicompenv="source ~/.virtualenvs/scicomp/bin/activate"
alias nest="source ~/.virtualenvs/nest/bin/activate"
alias hackenv="source ~/.virtualenvs/hackenv/bin/activate"
alias web="source ~/.virtualenvs/web/bin/activate" 

# Activate the sci environment by default and customize prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1
source ~/.virtualenvs/sci/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=0
export VIRTUAL_ENV_ENABLE_PROMPT=1


########################
## JAVA CONFIGURATION ##
########################

export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M"
export CLASSPATH=$CLASSPATH:~/algs4/stdlib.jar:~/algs4/algs4.jar
 
## Colors for mvn output ##

# Formatting constants
export BOLD=`tput bold`
export UNDERLINE_ON=`tput smul`
export UNDERLINE_OFF=`tput rmul`
export TEXT_BLACK=`tput setaf 0`
export TEXT_RED=`tput setaf 1`
export TEXT_GREEN=`tput setaf 2`
export TEXT_YELLOW=`tput setaf 3`
export TEXT_BLUE=`tput setaf 4`
export TEXT_MAGENTA=`tput setaf 5`
export TEXT_CYAN=`tput setaf 6`
export TEXT_WHITE=`tput setaf 7`
export BACKGROUND_BLACK=`tput setab 0`
export BACKGROUND_RED=`tput setab 1`
export BACKGROUND_GREEN=`tput setab 2`
export BACKGROUND_YELLOW=`tput setab 3`
export BACKGROUND_BLUE=`tput setab 4`
export BACKGROUND_MAGENTA=`tput setab 5`
export BACKGROUND_CYAN=`tput setab 6`
export BACKGROUND_WHITE=`tput setab 7`
export RESET_FORMATTING=`tput sgr0`
 
# Wrapper function for Maven's mvn command.
mvn-color()
{
  # Filter mvn output using sed
  mvn $@ | sed -e "s/\(\[INFO\]\ \-.*\)/${TEXT_BLUE}${BOLD}\1/g" \
               -e "s/\(\[INFO\]\ \[.*\)/${RESET_FORMATTING}${BOLD}\1${RESET_FORMATTING}/g" \
               -e "s/\(\[INFO\]\ BUILD SUCCESSFUL\)/${BOLD}${TEXT_GREEN}\1${RESET_FORMATTING}/g" \
               -e "s/\(\[WARNING\].*\)/${BOLD}${TEXT_YELLOW}\1${RESET_FORMATTING}/g" \
               -e "s/\(\[ERROR\].*\)/${BOLD}${TEXT_RED}\1${RESET_FORMATTING}/g" \
               -e "s/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/${BOLD}${TEXT_GREEN}Tests run: \1${RESET_FORMATTING}, Failures: ${BOLD}${TEXT_RED}\2${RESET_FORMATTING}, Errors: ${BOLD}${TEXT_RED}\3${RESET_FORMATTING}, Skipped: ${BOLD}${TEXT_YELLOW}\4${RESET_FORMATTING}/g"
 
  # Make sure formatting is reset
  echo -ne ${RESET_FORMATTING}
}
 
# Override the mvn command with the colorized one.
alias mvn="mvn-color"

# NEST environment variables
source /Users/Max/NEST/nest26/ins/bin/nest_vars.sh

#########################
## TORCH CONFIGURATION ##
#########################

export PATH=/Users/Max/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/Users/Max/torch/install/lib:/usr/local/Cellar/libsodium/1.0.8/lib/:/usr/local/cuda/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export DYLD_LIBRARY_PATH=/Users/Max/torch/install/lib:/Users/Max/cudnn-6.5:/usr/local/cuda/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist
