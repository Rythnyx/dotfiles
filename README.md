# dotfiles
Contains base config for devices I do work on (primarily macbooks).
Primary things used here include:
- zsh
  - Basic scripting setup, may replace with fish at some point
  - [ ] todo: `.zshrc` should start flox for default env, hold refrences to `.dots`, setup prompt, and provide basic defaults/overrides
- [flox]([url](https://flox.dev))
  - used to allow for some basic config and default shell setup
    - [oh-my-posh](https://ohmyposh.dev)
    - [eza](https://github.com/eza-community/eza)
    - [hidden-bar](https://github.com/dwarvesf/hidden)
      - [ ] todo: needs some scripting to create auto-start behavior
      - can be found manually in /nix/store to open for the first time
  - allows for [environment layering]([url](https://flox.dev/docs/tutorials/layering-multiple-environments/)) for different dev stacks that build off a default
- nvim
  - lua customization is easily portable thanks to [lazy nvim]([url](http://www.lazyvim.org/configuration/lazy.nvim))

### Installation
Very rudimentary installation via `install.sh`.
- Expectation of this repository being installed under `~/Developer` on your machine
  - Path should be `~/Developer/dotfiles`, but if not, it will overwrite its contents there each install
- `install.sh` will overwrite your `$HOME/.zshrc` and merge/overwrite contents of `$HOME/.config`
  - Also creates a number of aliases and exports per `.dots/personal/*`
  

### Possible Issues
- flox
  - Presently corporate networks requiring certificates being added to the machines trustore may cause issues and [env vars described here](https://flox.dev/docs/reference/command-reference/flox/#environment-variables) do not remedy it
    - a workaround can be [found here](https://github.com/flox/flox/issues/1561#issuecomment-2671920354)
