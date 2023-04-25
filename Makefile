.PHONY: all
all:
	@echo "make image or push"

.PHONY: image
image:
	docker build \
		-t ghcr.io/batx-dev/debian:11.6-slim \
		-t ghcr.io/batx-dev/debian:11-slim \
		-t ghcr.io/batx-dev/debian:bullseye-slim \
		-t ghcr.io/batx-dev/debian:latest \
		.

.PHONY: push
push:
	docker push \
		ghcr.io/batx-dev/debian:11.6-slim 
	docker push \
		ghcr.io/batx-dev/debian:11-slim 
	docker push \
		ghcr.io/batx-dev/debian:bullseye-slim 
	docker push \
		ghcr.io/batx-dev/debian:latest 
