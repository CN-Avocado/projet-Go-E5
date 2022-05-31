build-run:
	docker build -t choaching-api .
	docker-compose up -d

build:
	docker build -t choaching-api .