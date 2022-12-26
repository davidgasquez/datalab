IMAGE_NAME := "davidgasquez/datalab:latest"

build:
	docker build -t $(IMAGE_NAME) .

clean-build:
	docker build --no-cache -t $(IMAGE_NAME) .
