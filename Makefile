all: list.txt	
test:
	QUIET=ON ${PWD}/bin/apt-get install a2ps

test-vim:
	QUIET=ON ${PWD}/bin/apt-get install libgpm2
	QUIET=ON ${PWD}/bin/apt-get install libselinux1
	QUIET=ON ${PWD}/bin/apt-get install vim
	PATH=${PATH}:${HOME}/.local/usr/bin LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${HOME}/.local/lib/x86_64-linux-gnu:${HOME}/.local/usr/lib/x86_64-linux-gnu: ${HOME}/.local/usr/bin/vim.basic --version

test-nmap:
	QUIET=ON ${PWD}/bin/apt-get install libblas3
	QUIET=ON ${PWD}/bin/apt-get install lua-lpeg
	QUIET=ON ${PWD}/bin/apt-get install libpcap0.8
	QUIET=ON ${PWD}/bin/apt-get install liblinear4
	QUIET=ON ${PWD}/bin/apt-get install nmap
	PATH=${PATH}:${HOME}/.local/usr/bin LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${HOME}/.local/usr/lib/x86_64-linux-gnu/blas/:${HOME}/.local/lib/x86_64-linux-gnu:${HOME}/.local/usr/lib/x86_64-linux-gnu: ${HOME}/.local/usr/bin/nmap --version
	PATH=${PATH}:${HOME}/.local/usr/bin LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${HOME}/.local/usr/lib/x86_64-linux-gnu/blas/:${HOME}/.local/lib/x86_64-linux-gnu:${HOME}/.local/usr/lib/x86_64-linux-gnu: ${HOME}/.local/usr/bin/nmap  -sn 192.168.1.0/24

clean:
	echo clean
	rm -fR ${HOME}/.local/*

list.txt:
	docker-compose up
