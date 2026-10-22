## Read by every zsh invocation (interactive or not), so keep this minimal.
## Installed to $HOME/.zshenv by install.sh; the dotfiles repo is the source of truth.
dotfiles_dir="$HOME/Developer/dotfiles"

[ -f "$dotfiles_dir/dots/personal/env.zsh" ] && . "$dotfiles_dir/dots/personal/env.zsh"
