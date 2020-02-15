[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/Users/utopist/Library/Python/3.7/bin:$HOME/bin:$HOME/go/bin

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /Users/utopist/Library/Python/3.7/bin/virtualenvwrapper.sh

#tiny care config
source ~/tinycare.env

#bash aliases
source ~/.bash_aliases

# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /Users/utopist/Library/Python/3.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
