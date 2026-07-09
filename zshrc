## Setup for script
dotfiles_dir="$HOME/Developer/dotfiles"

### activate default flox environment
eval "$(flox activate -d $dotfiles_dir -m run)"

### Start up the prompt
# Load oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/night-owl.omp.json)"

### Source all of our custom .dot env files
DOTS_P="$dotfiles_dir/dots/personal"
DOTS_W="$dotfiles_dir/dots/work"

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

