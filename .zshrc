### activate default flox environment
eval "$(flox activate -m run)"

### Personal configs
[[ -f $HOME/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
# [[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f $HOME/.zsh/oh-my-posh.zsh ]] && source $HOME/.zsh/oh-my-posh.zsh

### eza replacing ls
alias ls="eza --icons --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --git --binary --group"
alias la="ls -a"
alias ll="ls -al"

### Start up the prompt
# Load oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/night-owl.omp.json)"

### General dev export
export VOLUMES="$HOME/Developer/volumes"

