lib = ./dockerfiles

Dockerfile: $(lib)/*.m4
    m4 -I $(lib) $(lib)/Dockerfile.m4 >$@

build: 
    docker build --rm -t your/image .
