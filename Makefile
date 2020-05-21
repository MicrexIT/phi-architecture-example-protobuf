compile:
	protoc --go_out=plugins=grpc:../schema schema.proto

install:
	go mod download

clean:
	rm schema/*.pb.go

reset:
	make clean schema