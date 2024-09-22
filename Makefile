@default: init_shell

init_shell:
	./scripts/zsh_config.sh

brew:
	./scripts/brew/brew.sh
	./scripts/brew/install_pkgs.sh

test:
	./scripts/test.sh

cleanup:
	./scripts/cleanup.sh
