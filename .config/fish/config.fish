# set -gx fish_greeting ''
#set fish_greeting (set_color red)'                 ___
#   ___======____='(set_color yellow)'---='(set_color red)')
# /T            \_'(set_color yellow)'--==='(set_color red)')
# L \ '(set_color yellow)'(@)   '(set_color red)'\~    \_'(set_color yellow)'-=='(set_color red)')
#  \      / )J'(set_color yellow)'~~    '(set_color red)'\\'(set_color yellow)'-='(set_color red)')
#   \\\\___/  )JJ'(set_color yellow)'~~    '(set_color red)'\)
#    \_____/JJJ'(set_color yellow)'~~      '(set_color red)'\
#    / \  , \\'(set_color red)'J'(set_color yellow)'~~~~      \
#   (-\)'(set_color red)'\='(set_color yellow)'|  \~~~        L__
#   ('(set_color red)'\\'(set_color yellow)'\\)  ( -\)_            ==__
#    '(set_color red)'\V    '(set_color yellow)'\-'(set_color red)'\) =='(set_color yellow)'=_____  J\   \\\\
#           '(set_color red)'\V)     \_)'(set_color yellow)' \   JJ J\)
#                       /J J'(set_color red)'T'(set_color yellow)'\JJJ'(set_color red)'J)
#                       (J'(set_color yellow)'JJ| '(set_color red)'\UUU)
#                        (UU)'
set fish_greeting '🐟 🔪 '
set shell /bin/bash
set -xU MANPAGER 'vim -c MANPAGER -'
set -xU EDITOR vim
set -xU LANG en_US.UTF-8
set -xU LC_ALL en_US.UTF-8

set -gx fish_color_autosuggestion 969896
set -gx fish_color_command b294bb
set -gx fish_color_comment f0c674
set -gx fish_color_cwd green
set -gx fish_color_cwd_root red
set -gx fish_color_end 009900
set -gx fish_color_error cc6666
set -gx fish_color_escape cyan
set -gx fish_color_history_current cyan
set -gx fish_color_host red
set -gx fish_color_match cyan
set -gx fish_color_normal 5f5f5f
set -gx fish_color_operator cyan
set -gx fish_color_param 81a2be
set -gx fish_color_quote b5bd68
set -gx fish_color_redirection 8abeb7
set -gx fish_color_search_match \x2d\x2dbackground\x3dpurple
set -gx fish_color_selection \x2d\x2dbackground\x3dpurple
set -gx fish_color_status red
set -gx fish_color_user cyan
set -gx fish_color_valid_path \x2d\x2dunderline
set -gx fish_pager_color_completion normal
set -gx fish_pager_color_description 555\x1eyellow
set -gx fish_pager_color_prefix cyan
set -gx fish_pager_color_progress cyan

alias vi "vim"
alias ls "ls -G"
alias l "ls -lhG"
alias ll "ls -lahG"
alias gut "git"
alias got "git"
alias diff "colordiff"
alias grep "grep --color=auto"
alias gcd "cd (git rev-parse --show-toplevel)"

set -g fish_emoji_width 2

set PATH $HOME/bin $HOME/.composer/vendor/bin $HOME/Library/Android/sdk/tools $HOME/Library/Android/sdk/platform-tools $PATH
set ANDROID_HOME $HOME/Library/Android/sdk
source $HOME/.config/iterm2/shell_integration.fish
alias updatevim "vim +BundleInstall! +BundleClean +qall"

function fish_user_key_bindings
  bind \x1b\x08 backward-kill-word
end

eval sh $HOME/.config/iterm2/base16-summerfruit.dark.sh

if test -d $HOME/go_workspace
  set -gx GOPATH "$HOME/go_workspace"
  set -gx PATH "$GOPATH/bin" $PATH
end
