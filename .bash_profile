# .bash_profile
# this is ment to be exported and not to be used by the local os x
# see bashrc for local config

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Include git bash variables
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# Variables
export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# export PS1='\[\033[36m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[00m\]> '
export PS1='\[\033[36m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;32m\]\w \[\033[00m\]$git_branch$git_dirty> '
PATH=$PATH:$HOME/bin
alias vi='vim'
alias ll='ls -lah'
alias gut='git'
alias got='git'
alias grep='grep --color=auto'
alias gcd='cd $(git rev-parse --show-toplevel)'
source $HOME/.config/iterm2/shell_integration.bash
alias updatevim='vim +BundleInstall! +BundleClean +qall'
grepr() { grep -R "$1" *; }
export HISTTIMEFORMAT="%d/%m/%y %T "
export MANPAGER="vim -c MANPAGER -"

BASE16_SHELL="$HOME/.config/iterm2/base16-summerfruit.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
