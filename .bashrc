#Colors
#export TERM=”screen-256color” 
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

#Tmux
powerline-daemon -q
POWERLINE_BASH_CONFIGURATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh 


# from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
#source ~/.git-prompt.sh

# tells Readline to perform filename completion in a case-insensitive fashion
bind "set completion-ignore-case on"

# filename matching during completion 
# will treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# will get Readline to display all possible matches 
# for an ambiguous pattern at the 
# first <Tab> press instead of at the second
bind "set show-all-if-ambiguous on"

# no bell sound on error
bind "set bell-style none"

# no need to type cd (works for .. but not -, although alias -- -='cd -' fixes it)
shopt -s autocd 2>/dev/null

# specify other paths to look inside of when autocompleting
CDPATH=".:~/icloud/HTML5"

export nodehc="$HOME/icloud/HTML5/VIM/nodeHC"
export HTML5="$HOME/icloud/HTML5"
export ARS="$HOME/icloud/AddOns/ARS\ ALLIN/"

# application configuration
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="1;32"
export MANPAGER="less -X" # Don't clear the screen after quitting a manual page
export DOCKER_TLS_VERIFY=1
export GOPATH=$HOME/Projects/golang
export PATH=$HOME/Projects/golang/bin/:$HOME/dotvim/voom:$PATH
export EDITOR="vim"

# don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"

# Colored man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# force colours
force_color_prompt=yes

# use colour prompt
color_prompt=yes

# display number of backgrounded processes/jobs
num_jobs=$(jobs | wc -l)
if [ $num_jobs -eq 0 ]; then
    num_jobs=""
  else
      num_jobs=" (\j)"
    fi

