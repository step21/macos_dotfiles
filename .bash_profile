if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi
#export NVM_DIR="$HOME/.nvm"
#source $(brew --prefix nvm)/nvm.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH=$PATH:/Users/utopist/Library/Python/3.7/bin


export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"


eval "$(pyenv init -)"

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/utopist/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/utopist/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/utopist/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/utopist/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

