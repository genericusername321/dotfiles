# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# zsh theme
ZSH_THEME="agnoster"

# zsh plugins
plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

bindkey -v

