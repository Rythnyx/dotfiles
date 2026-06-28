## Ensure we have the default folder structure in ~/Developer/dotfiles
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

dotfiles_dir="$HOME/Developer/dotfiles"
dotsfile_dir_exists=$([ ! -d "$dotfiles_dir/Developer/dotfiles" ] && true || echo false)

### First ensure directory exists, create if not
if [ ! $dotfiles_dir_exists ]; then
  mkdir -p $dotfiles_dir
fi

### Copy is done if the repository does not exist in the preferred path
if [ "$SCRIPT_DIR" != "$dotfiles_dir" ]; then
  cp -rf ./* $dotfiles_dir/
  echo "*NOTE*: Since this folder does not exist in $dotfiles_dir, contents will be copied every install"
fi

### Determines if we need to do some additional setup in the env
first_init=$([ ! -d "$dotfiles_dir/dots/work" ] && true || echo false)
if $first_init; then
  mkdir -p $dotfiles_dir/dots/work
  mkdir -p "$DEV_VOLUMES"  
fi

### Lastly, overwrite the .zshrc and .config in the home directory 
### to make sure everything is up to date
cp -rf ./config $HOME/.config
cp -rf zshrc $HOME/.zshrc

