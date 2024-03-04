# My dotfiles

This directory contains all of my dotfiles across my workspaces. 

## Requirements

Make sure the following should are installed

### Git

```
sudo apt install git-all
```

### Stow 

```
sudo apt-get install stow
```

if you are unable to use stow for some reason (security reasons), you can use the following command to create symlinks

```bash
> ln -s ../dotfiles/.config/nvim nvim
```

### exa

https://github.com/ogham/exa          |

### zoxide

https://github.com/ajeetdsouza/zoxide

### bat

https://github.com/sharkdp/bat

### ripgrep

https://github.com/BurntSushi/ripgrep

### fzf

https://github.com/junegunn/fzf

## Installation

```
$ git clone git@github.com/fdiengott/dotfiles.git
$ cd dotfiles
```

Then use GNU stow to create symlinks 

```
$ stow .
```

https://www.youtube.com/watch?v=y6XCebnB9gs&t=3&ab_channel=DreamsofAutonomy

