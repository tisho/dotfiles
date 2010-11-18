. ~/.zsh/config
. ~/.zsh/prompt
. ~/.zsh/aliases
. ~/.zsh/completion

#[[ -f ~/.rvm/scripts/rvm ]] && . ~/.rvm/scripts/rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc
