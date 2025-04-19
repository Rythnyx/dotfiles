# dotfiles
Contains base config for devices I do work on (primarily macbooks).
Primary things used here include:
- zsh
  - Basic scripting setup, may replace with fish at some point
  - [ ] todo: `.zshrc` should start flox for default env, hold refrences to `.zsh`, setup prompt, and provide basic defaults/overrides
  - [ ] todo: `.zsh` directory should hold common aliases and futher custom dotfiles`
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
