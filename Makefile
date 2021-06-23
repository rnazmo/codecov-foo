.PHONY: test
test:
	go test -v

.PHONY: cover
cover:
	go test -coverprofile=cover.out -covermode=atomic ./...
	go tool cover -html=cover.out -o cover.html
	go tool cover -func=cover.out