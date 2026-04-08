.PHONY: build test install uninstall

INSTALL_PATH = /usr/local/bin/testbox

all: build test

build:
	docker build -f dockerfile -t testbox:latest .

test:
	docker run --rm -it --network host -v $$(pwd):/testbox testbox:latest bash

install:
	@echo "Installing testbox command to $(INSTALL_PATH)..."
	@sudo cp testbox.sh $(INSTALL_PATH)
	@sudo chmod +x $(INSTALL_PATH)
	@echo "✅ Installed successfully!"
	@echo "Usage: testbox [directory]"

uninstall:
	@echo "Removing $(INSTALL_PATH)..."
	@sudo rm -f $(INSTALL_PATH)
	@echo "✅ Uninstalled successfully!"