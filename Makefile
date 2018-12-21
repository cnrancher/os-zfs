.dapper:
	@echo Downloading dapper
	@curl -sL https://releases.rancher.com/dapper/latest/dapper-`uname -s`-`uname -m` > .dapper.tmp
	@@chmod +x .dapper.tmp
	@./.dapper.tmp -v
	@mv .dapper.tmp .dapper

.PHONY: ci
ci: .dapper
	./.dapper ci 2>&1 | tee release.log

.DEFAULT_GOAL := ci

shell-bind: .dapper
	./.dapper -m bind -s
