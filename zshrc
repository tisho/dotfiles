. ~/.zsh/config
. ~/.zsh/prompt
. ~/.zsh/aliases
. ~/.zsh/completion

#[[ -f ~/.rvm/scripts/rvm ]] && . ~/.rvm/scripts/rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
  function chpwd {
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' $PWD_URL
  }

  chpwd
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
