## template Makefile:
#:

SHELL          = /bin/sh
CFG           ?= .env
PRG            = showonce
PRG           ?= $(shell basename $$PWD)
PRG_DEST      ?= $(PRG)

IMG           ?= ghcr.io/mermaid-js/mermaid-cli/mermaid-cli:10.2.5-beta.9
# -----------------------------------------------------------------------------

dia:
	docker run --rm -u `id -u`:`id -g` -v $(PWD):/data $(IMG) -i README.md -o readme.md


mkd2:
	d2 arch.d2 arch.svg
	d2 --sketch arch.d2 arch-sketch.svg
	d2 --layout=elk arch.d2 arch-elk.svg
	d2 --layout=elk --sketch arch.d2 arch-elk-sketch.svg

