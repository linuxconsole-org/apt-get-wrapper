all:	
	echo Choose option
test:
	QUIET=ON ${PWD}/bin/apt-get install flatpak
	
clean:
	echo clean
	rm -fR ${HOME}/.local/*
