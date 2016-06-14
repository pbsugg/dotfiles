##Dotfiles

###Overview

A collection of "dotfiles" in my home directory for backing up and making
settings portable.  These include

* aliases
* bash_profile: when installed, this sources both my custom aliases and anything in
  .bashrc file.  I use the .bashrc file to include any other configuration
options that would not be of general interest (for example, changes to the $PATH
variable) or other settings that I want to remain private

###Installation

````
git clone https://github.com/pbsugg/dotfiles.git
./install.sh
```

Installation will check if there are existing copies of `.aliases` and
`.bash_profile` in `$HOME` directory.  If so it will exit without overwriting.
Otherwise it creates symbolic links to both these files in the `$HOME`
directory. It does not touch `.bashrc` since this is considered a
machine-specific only set of configurations.

Note that your terminal program will need to source `.bash_profile` to pull in
the rest of the settings from `.aliases` and `.bashrc` files.
