NAME 	  := picymru/documentation
VERSION	  := 1.0.0

.PHONY: build
build:
	docker build -t $(NAME):$(VERSION) .

.PHONY: run
run:
	docker run -p 80:8000 $(NAME):$(VERSION)