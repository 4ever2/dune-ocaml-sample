all: build
.PHONY: all

build:
	dune build
.PHONY: build

clean:
	dune clean
.PHONY: clean

install:
	dune install
.PHONY: install

exec:
	dune exec EXE_NAME
.PHONY: exec

test:
	dune test
.PHONY: test
