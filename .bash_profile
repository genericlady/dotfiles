source ~/.aliases
source ~/.keys
stty -ixon

export PATH="$PATH:$HOME/Users/yianna/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export TR_EMAIL=yianna@taskrabbit.com
export TR_PROJECT_DIR=/Users/yiannakokalas/Code/taskrabbit
export PROMPT_COMMAND='echo -ne "\033]0;This is my custom title for ${HOSTNAME}: ${PWD}\007"'
export ANDROID_HOME=~/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export PS1="$RED\[\e[32m\]\W\[\e[0m\]\n♥ "
export TDDIUM_DB_MYSQL_HOST="localhost"
export TDDIUM_DB_USER="root"
export TDDIUM_DB_NAME="v3_test"
PS2='> '
PS4='+ '

set -i vi
