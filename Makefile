all: build

build:
	@docker build --tag=kaneymhf/openfire .
	@docker push kaneymhf/openfire

release: build
	@docker build --tag=kaneymhf/openfire:$(shell cat VERSION) .
	@docker push kaneymhf/openfire:$(shell cat VERSION)
