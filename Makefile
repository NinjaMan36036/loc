NPM_IN_FILES = $(shell find ./functions/src/ -type f -name '*.ts')
NPM_OUT_FILES = $(shell find ./functions/lib/ -type f -name '*.js')

$(NPM_OUT_FILES): $(NPM_IN_FILES)
	npm --prefix ./functions run lint
	npm --prefix ./functions run build

subsystem:
	$(MAKE) -C loc\css
