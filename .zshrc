export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export TERM='xterm-256color'

ZSH_THEME="powerlevel10k/powerlevel10k"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
alias reload='exec zsh'
alias clr='clear'

neofetch
