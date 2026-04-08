.PHONY: build test

all: build test

build:
	docker build -f dockerfile -t testbox:latest .

test:
	docker run --rm -it --network host -v $$(pwd):/workspace testbox:latest bash
