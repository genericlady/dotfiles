source ~/.aliases
source ~/.keys
source ~/.helpers

export PROMPT_COMMAND='echo -ne "\033]0;This is my custom title for ${HOSTNAME}: ${PWD}\007"'
export PS1="$RED\$(parse_git_branch) \[\e[32m\]\W\[\e[0m\]\n♥ "
PS2='> '
PS4='+ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

superprompt

