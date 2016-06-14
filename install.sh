#/bin/sh
#check if there is bash_profile or aliases already
#if so, notify user
#else, create links to these two files in home directory

set -e

if [[ -e $HOME/.bash_profile || -e $HOME/.aliases ]]; then
	echo "copy of ~/.bash_profile or ~/.aliases already present"
	echo "files must be renamed, try again"
	exit 1
fi

echo "== Creating symbolic links in home directory to bash_profile and aliases"
ln -s $PWD/bash_profile $HOME/.bash_profile
ln -s $PWD/aliases $HOME/.aliases

echo "alias and bash_profile links installed"


