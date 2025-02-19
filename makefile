rebuild:
	sudo nixos-rebuild switch --flake .#${WONKO_OS_BUILD}

dry-build:
	sudo nixos-rebuild dry-build --flake .#${WONKO_OS_BUILD}

update:
	nix flake update

trim:
	sudo bash ./trim-gens.sh

clean:
	sudo nix-store --optimize
	sudo nix-store --gc