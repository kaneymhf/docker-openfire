all: build

build:
	@docker build --tag=kaneymhf/openfire .

release: build
	@docker build --tag=kaneymhf/openfire:$(shell cat VERSION) .
