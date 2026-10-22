# Environment variables that must be available in every zsh invocation
# (interactive or not), so tools launched from scripts/agents find their config.
# Loaded by ~/.zshenv, and also picked up by the dots/personal loop in .zshrc.
# Keep this file idempotent and free of output or commands that depend on flox.

## Tools (nvim, gh, oh-my-posh, ...) read their config from the dotfiles repo
export XDG_CONFIG_HOME="$HOME/Developer/dotfiles/config/"

## Container volumes have a convenience environment location
export DEV_VOLUMES="$HOME/Developer/volumes"
