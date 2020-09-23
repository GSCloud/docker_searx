all: info

info:
	@echo "🆘 make docs ➡️ rebuild documentation"
	@echo "🆘 make build ➡️ rebuild image"
	@echo "🆘 make deploy ➡️ deploy image"

docs:
	@/bin/bash ./create_pdf.sh

build:
	@/bin/bash ./build.sh

deploy:
	@/bin/bash ./deploy.sh
