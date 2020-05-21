compile:
	protoc --go_out=plugins=grpc:./ schema.proto

install:
	go mod download

clean:
	rm *.pb.go

reset:
	make clean schema