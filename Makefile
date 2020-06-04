compile:
	protoc --go_out=plugins=grpc:./ schema.proto

gateway:
	protoc --grpc-gateway_out=logtostderr=true:./ schema.proto

install:
	go mod download

clean:
	rm *.pb.go

reset:
	make clean schema