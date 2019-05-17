
GOPATH:=$(shell go env GOPATH)


.PHONY: proto
proto:
	protoc -I. --go_out=. --micro_out=. proto/example/example.proto

.PHONY: build
build: proto

	go build -o gomicro-greeter-srv main.go plugin.go

.PHONY: test
test:
	go test -v ./... -cover

.PHONY: docker
docker:
	docker build . -t gomicro-greeter-srv:latest
