.PHONY: run clean build post bundle-path

all:
	@echo "****************************"
	@echo "** github page build tool **"
	@echo "****************************"
	@echo "make <cmd>"
	@echo ""
	@echo "commands:"
	@echo "  run                   - run jekyll in dev mode"
	@echo "  build                 - build jekyll in dev mode"
	@echo "  clean                 - clear build artifacts"
	@echo ""
	@echo ""

print-%: ; @echo $*=$($*)

DATE?=`date +'%Y-%m-%d'`
POSTDIR="_posts"

.PHONY: tools
tools:
	@brew install gh

bundle-path:
	@bundle info --path minima

run:
	@bundle exec jekyll serve --incremental --livereload --host 0.0.0.0

clean:
	@bundle exec jekyll clean

build:
	@bundle exec jekyll build

post:
	@read -r -p "Enter new post title: " title;     \
	bundle exec jekyll post $${title};
