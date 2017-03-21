make:
	make update
	make test

update:
	@echo "Updating module repositories..."
	@git pull --recurse-submodules
	@echo "Done!"

test:
	@echo "Running tests..."