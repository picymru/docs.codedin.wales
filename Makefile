NAME 	  := picymru/documentation
VERSION	  := latest

.PHONY: build
build:
	docker build -t $(NAME):$(VERSION) .

.PHONY: run
run:
	docker run -p 80:8000 $(NAME):$(VERSION)