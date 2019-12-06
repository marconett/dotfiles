# If you come from bash you might have to change your $PATH.
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$PATH:$HOME/bin:$HOME/.composer/vendor/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=/usr/local/sbin:$PATH
export TERM=xterm-color
export MANPAGER="vim -c MANPAGER -"
export DFM_DIR="$HOME/Dev/dotfiles"

# Base16 shell for vim colors
 BASE16_SHELL="$HOME/.config/iterm2/base16-summerfruit.dark.sh"
# BASE16_SHELL="$HOME/.config/iterm2/base16-summerfruit.light.sh"
[ -e $BASE16_SHELL ] && source $BASE16_SHELL

# iTerm2 integration (imgcat)
SHELL_INTEGRATION="${HOME}/.config/iterm2/shell_integration.zsh"
[ -e $SHELL_INTEGRATION ] && source $SHELL_INTEGRATION

# Dircolors
DIRCOLORS="$HOME/.config/iterm2/dircolors"
[ -e $DIRCOLORS ] && [ -x "$(command -v gdircolors)" ] && eval "`gdircolors -b $DIRCOLORS`"

# GNU ls for colors
LS="ls"
[ -x "$(command -v gls)" ] && LS="gls --color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="flazz"
ZSH_THEME="mine"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  httpie
  osx
  pass
  # zsh-syntax-highlighting
  history-substring-search
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi='vim'
alias ls=$LS' -G'
alias l=$LS' -lhG'
alias ll=$LS' -lahG'
alias gut='git'
alias got='git'
alias diff='colordiff'
alias grep='grep --color=auto'
alias gcd='cd $(git rev-parse --show-toplevel)'
alias updatevim='vim +BundleInstall! +BundleClean +qall'

grepr() {
  if [[ "$#" == 0 ]]; then
    echo 'missing argument'
  else
    grep -R "${*}" *
  fi
}

bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=240"
LSCOLORS=exfxfeaeBxxehehbadacea

setopt no_share_history
unsetopt share_history
