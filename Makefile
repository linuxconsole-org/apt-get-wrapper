all: list.txt	
test:
	QUIET=ON ${PWD}/bin/apt-get install a2ps
	
clean:
	echo clean
	rm -fR ${HOME}/.local/*

list.txt:
	docker-compose up
