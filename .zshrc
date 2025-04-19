### activate default flox environment
eval "$(flox activate -m run)"

### Personal/custom configs
[[ -f $HOME/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f $HOME/.zsh/oh-my-posh.zsh ]] && source $HOME/.zsh/oh-my-posh.zsh

### Start up the prompt
# Load oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/night-owl.omp.jso

### eza replacing ls
alias ls="eza --icons --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --git --binary --group"

### General dev export
export VOLUMES="$HOME/Developer/volumes"

