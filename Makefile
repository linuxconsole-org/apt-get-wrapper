all:	
	echo Choose option
test:
	QUIET=ON ${PWD}/bin/apt-get install vim
	
clean:
	echo clean
	rm -fR ${HOME}/.local/*

extract:
	bash extract.sh > list.txt
