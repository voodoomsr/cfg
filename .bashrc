
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

TERM=xterm-256color

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
