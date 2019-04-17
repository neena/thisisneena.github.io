export TERM="xterm-256color"
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#
autoload -Uz promptinit
promptinit
prompt powerlevel9k
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="$MAHIMAHI_SHELL_PREFIX"
# Visual customisation of the second prompt line
local user_symbol="$"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

source $HOME/.cargo/env

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='214'
POWERLEVEL9K_DIR_HOME_BACKGROUND='214'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='214'

ulimit -n 16384
