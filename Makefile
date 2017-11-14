.PHONY: build help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

lib: build

clean: ## delete transpiled ES6 files
	@npm run-script clean

install: package.json ## install dependencies
	@npm install

build: ## compile ES6 files to JS
	@npm pack

publish: ## build first, then publish
	@npm publish
