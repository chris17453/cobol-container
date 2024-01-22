tag=cobolcontainer

build:
	@docker build -t ${tag} .

run:
	@docker run ${tag}