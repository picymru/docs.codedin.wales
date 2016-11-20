NAME 	  := picymru/documentation
VERSION	  := 2016.11.1

.PHONY: release
release:
	utils/versioner.py release $(VERSION)
	make build
	make run

.PHONY: build
build:
	docker build -t $(NAME):$(VERSION) .

.PHONY: run
run:
	docker run -p 80:8000 $(NAME):$(VERSION)