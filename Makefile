all: info

info:
	@echo "\e[1;32m👾 Welcome to Docker searX 👾\n"
	@echo "🆘 \e[0;1mmake build\e[0m - rebuild image"
	@echo "🆘 \e[0;1mmake docs\e[0m - rebuild documentation"
	@echo "🆘 \e[0;1mmake everything\e[0m - run all make points"
	@echo "🆘 \e[0;1mmake install\e[0m - deploy image\n"

docs:
	@/bin/bash ./create_pdf.sh

build:
	@/bin/bash ./build.sh

install:
	@/bin/bash ./deploy.sh

everything: docs build install
