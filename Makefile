test:
	go test -v -race ./...

build:
	CGO_ENABLED=0 go build -trimpath -ldflags "-s" -o rr cmd/rr/main.go


buildLinux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -trimpath -ldflags "-s" -o rr cmd/rr/main.go


buildWindows:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -trimpath -ldflags "-s" -o rr cmd/rr/main.go
