all: list.txt	
test:
	QUIET=ON ${PWD}/bin/apt-get install a2ps
test-vim:
	QUIET=ON ${PWD}/bin/apt-get install libgpm2
	QUIET=ON ${PWD}/bin/apt-get install libselinux1
	QUIET=ON ${PWD}/bin/apt-get install vim
	PATH=${PATH}:${HOME}/.local/usr/bin LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${HOME}/.local/lib/x86_64-linux-gnu:${HOME}/.local/usr/lib/x86_64-linux-gnu: ${HOME}/.local/usr/bin/vim.basic --version

clean:
	echo clean
	rm -fR ${HOME}/.local/*

list.txt:
	docker-compose up
