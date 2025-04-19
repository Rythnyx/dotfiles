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

### Go Brew
export PATH="/opt/go/.gobrew/current/bin:/opt/go/.gobrew/bin:$PATH"
export GOBREW_ROOT=/opt/go
export GOROOT="/opt/go/.gobrew/current/go"
export GOPATH="/opt/go/workspace"

### pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

