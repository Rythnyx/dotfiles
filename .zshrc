### activate default flox environment
eval "$(flox activate -d $HOME -m run)"

### Personal/Work configs
first_init=$([ ! -d "$HOME/.dots" ] && true || echo false)
if $first_init; then
  mkdir -p $HOME/.dots/personal
  mkdir -p $HOME/.dots/work
fi

DOTS_P="$HOME/.dots/personal"
DOTS_W="$HOME/.dots/work"

if [ "$(find $DOTS_P -type f | head -n 1)" ]; then
  for f in $DOTS_P/*; do
     . "$f"
  done
fi

if [ "$(find $DOTS_W -type f | head -n 1)" ]; then
  for f in $DOTS_W/*; do
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

