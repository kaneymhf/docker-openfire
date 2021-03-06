all: build

build:
	@docker build --tag=kaneymhf/openfire .
	@docker push kaneymhf/openfire

release: 
	@docker build --tag=kaneymhf/openfire:$(shell cat VERSION) .
	@docker push kaneymhf/openfire:$(shell cat VERSION)
