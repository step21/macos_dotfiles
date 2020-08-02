# bash completions
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# nvm and nvm bash completion
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/bin:$HOME/go/bin
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects

addAlias() { echo "alias $1='$2' " >> ~/.bash_profile; }
alias wetter='curl wttr.in'
alias mapscii='telnet mapscii.me'

eval "$(pyenv init -)"

#tiny care config
source ~/tinycare.env

#bash aliases
source ~/.bash_aliases

# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /Users/utopist/Library/Python/3.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
