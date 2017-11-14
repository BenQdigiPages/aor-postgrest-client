.PHONY: build help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

lib: build

clean: lib ## delete transpiled ES6 files
	@rm -rf lib

install: package.json ## install dependencies
	@npm install

build: ## compile ES6 files to JS
	@npm run-script build

publish: lib ## build first, then publish
	@npm run-script publish
