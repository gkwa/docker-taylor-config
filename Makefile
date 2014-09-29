lib = ./dockerfiles

Dockerfile: $(lib)/*.m4
	m4 -I $(lib) $(lib)/Dockerfile.m4 >$@

build: 
	sudo docker build -t taylor/ubuntu1404 .

clean:
	rm -f Dockerfile
