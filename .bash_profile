export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

addAlias() { echo "alias $1='$2' " >> ~/.bash_profile; }

alias wetter='curl wttr.in'
alias mapscii='telnet mapscii.me' 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.bashrc
export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

eval "$(pyenv init -)"

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
