all: info

info:
	@echo "\e[1;32m👾 Welcome to Docker searX 👾"
	@echo "🆘 \e[0;1mmake build\e[0m ➡️ rebuild image"
	@echo "🆘 \e[0;1mmake docs\e[0m ➡️ rebuild documentation"
	@echo "🆘 \e[0;1mmake install\e[0m ➡️ deploy image"

docs:
	@/bin/bash ./create_pdf.sh

build:
	@/bin/bash ./build.sh

install:
	@/bin/bash ./deploy.sh
