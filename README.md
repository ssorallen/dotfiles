This is a collection of my preferred settings mostly targeted at making
OS X 10.10 Yosemite pleasant for web development in
[Sublime Text 3](http://www.sublimetext.com/3), Git, and VIM.

## Installation

This uses [dotbot](https://github.com/anishathalye/dotbot) to symlink
various settings files to the proper locations. Where each settings file
will link is defined in "install.conf.yml".

1. `git clone https://github.com/ssorallen/dotfiles.git`
2. `./install`

### Configuring a Git user

The ".gitconfig" file should be symlinked to your home directory but not contain
any user-specific info so that it can be configured per-computer and not checked
into version control. This allows, for example, your home and work computers to
use the same Git configuration but different Git users.

1. Copy the `.gituser` template to your home directory

        cp .gituser.template ~/.gituser
2. Edit the copy in your home directory to your real information

        [user]
          name = Lois Lane
          email = llane@dailyplanet.com

### Setting Mac OS X Defaults

".osx" sets my preferred settings for OS X itself. The default `./install`
command does not run this because it can be expensive to run.

1. `./.osx`
