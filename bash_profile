#/bin/sh

#Source aliases and personal settings in bashrc

if [-r ~/.aliases]; then
	source ~/.aliases
fi

if [-r ~/.bashrc]; then
	source ~/.bashrc
fi

#other settings

export EDITOR="vim"


