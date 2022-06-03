
all: protoc client server

protoc:
	@echo "Generating Go files"
	cd src/rpc/proto && protoc --go_out=. --go-grpc_out=. \
		--go-grpc_opt=paths=source_relative --go_opt=paths=source_relative *.proto

server: protoc
	@echo "Building server"
	go build -o dist/rpc/server \
		github.com/janetat/go-demos/src/rpc/server

client: protoc
	@echo "Building client"
	go build -o dist/rpc/client \
		github.com/janetat/go-demos/src/rpc/client

clean:
	go clean github.com/janetat/go-demos/...
	rm -rf dist/*

.PHONY: client server protoc
