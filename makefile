.PHONY: build test

all: build test

build:
	docker build -f dockerfile -t testbox:latest .

test:
	docker run --rm -it --network host testbox:latest bash
