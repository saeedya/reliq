APP_NAME=reliq

run:
	go run . version

build:
	go build -o bin/$(APP_NAME) .

fmt:
	go fmt ./...

test:
	go test ./...

tidy:
	go mod tidy