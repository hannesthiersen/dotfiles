# My dotfiles
Repository of my dotfiles. It's setup in a way to make use of `stow` (multiple software installation manager) that automatically handles the symlinking of files.

# TODO
- familiarize with GNU stow (work out the implementation)
- stow the first dotfiles
- set up git repository (`.dotfiles`)
- write simple install script for vim-plug, stow and git
- replace dotfiles names with `dot-` e.g. `.bashrc` -> `dot-bashrc`. See `--dotfiles` argument for stow.



# Software Package Requirements
The following packages and software is needed for the dotfiles to work.
- vim-plug (insert link here; installation instructions in the link)
- stow
- git

```
[u@h ~]$ sudo pacman -S stow git
```

# Deploying all configs
```
stow --verbose --target $HOME *
```

Details to be filled in later.

```
<work in progress>
```

# Contents in Development:

## Creating a new configuration group
-   Create a new directory with a descriptive name (or use existing one if
    applicable): e.g.
    `bash/ neovim/`

-   Create an empty file and duplicate its path in `$HOME` (or other if
    applicable): e.g.
    `$HOME/.config/nvim/init.vim` -> `neovim/.config/nvim/init.vim`
    `$HOME/.bashrc` -> `bash/.bashrc`


## Pull in existing config files into a group

-   Use stow to adopt the config file(s) and create the symbolic links:
    e.g.
    `stow --adopt --verbose --target $HOME bash neovim`
    This will overwrite the empty files `bash/.bashrc`, `neovim/.../init.vim`
    with the contents of `$HOME/.bashrc`, `$HOME/.../init.vim` and replace the
    file in `$HOME` with a symlink to the file in `neovim`

    WARNING: This will overwrite files in the stow directory even if they are
    not empty!


## Deploy config files
-   Use stow to create the symlinks for config files:
    `stow --verbose --target $HOME bash neovim`

    WHAT HAPPENS WHEN THE CONFIG FILES ALREADY EXIST AND WHAT TO DO?

    Pre-plan/-workaround:
        * pull repo
        * adopt existing configs overwriting stow files (from desired groups)
        * use git to undo the overwrites (revert to last commit)
        * stow the desired groups once more (just in case there are config
          files not included by default


## Installation
Use the install script to install any of the requirments needed to make use of the dotfiles
```
bash installscript.sh
```

