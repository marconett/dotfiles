# .bashrc
# this is the local bash environment
# see bashrc for export config

# Include git bash variables
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
# Base16 Shell
BASE16_SHELL="$HOME/.config/iterm2/base16-summerfruit.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad
#sets up the prompt color
export PS1='\[\033[36m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;32m\]\w \[\033[00m\]$git_branch$git_dirty> '
#turn of bash history for lines starting with spaces
export HISTCONTROL=ignorespace
#enables color for iTerm
export TERM=xterm-color
export ANDROID_HOME=$HOME/Library/Android/sdk
PATH=$PATH:$HOME/bin:$HOME/.composer/vendor/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
PATH=/usr/local/sbin:$PATH
#sets up proper alias commands when called
alias ls='ls -G'
alias l='ls -lhG'
alias ll='ls -lahG'
alias gut='git'
alias got='git'
alias diff='colordiff'
alias grep='grep --color=auto'
alias gcd='cd $(git rev-parse --show-toplevel)'
alias updatevim='vim +BundleInstall! +BundleClean +qall'
grepr() { grep -R "$1" *; }
source $HOME/.config/iterm2/shell_integration.bash
export HISTTIMEFORMAT="%d/%m/%y %T "

export GOPATH="${HOME}/go_workspace"
export PATH="${GOPATH}/bin:${PATH}"
export MANPAGER="vim -c MANPAGER -"
export DFM_DIR="${HOME}/Dev/dotfiles"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
