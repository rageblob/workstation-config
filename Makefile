@default: init_shell

init_shell:
	./scripts/shell_config.sh

brew:
	./scripts/brew.sh

test:
	./scripts/test.sh

cleanup:
	./scripts/cleanup.sh
