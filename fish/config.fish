. ~/.config/fish/aliases.fish

set -gx PATH /usr/local/bin /usr/local/sbin $PATH

. ~/.local.fish

alias grep "grep --color"
alias rm "echo 'Don\'t use this use rmtrash instead'"

set fish_greeting

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
