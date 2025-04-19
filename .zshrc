### activate default flox environment
eval "$(flox activate -m run)"

### Personal/Work configs
first_init=$([ ! -d "$HOME/.zsh" ] && true || echo false)
if $first_init; then
  mkdir -p $HOME/.zsh/personal
  mkdir -p $HOME/.zsh/work
fi

ZSH_P="$HOME/.zsh/personal"
ZSH_W="$HOME/.zsh/work"

if [ "$(find $ZSH_P -type f | head -n 1)" ]; then
  for f in $ZSH_P/*; do
     . "$f"
  done
fi

if [ "$(find $ZSH_W -type f | head -n 1)" ]; then
  for f in $ZSH_W/*; do
    . "$f"
  done
fi

### Start up the prompt
# Load oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/night-owl.omp.json)"

### eza replacing ls
alias ls="eza --icons --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --git --binary --group"

### General dev export
export DEV_VOLUMES="$HOME/Developer/volumes"
if $first_init; then
  mkdir -p "$DEV_VOLUMES"
fi

