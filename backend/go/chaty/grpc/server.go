package grpc

import (
	"fmt"
	"log"
	"net"

	"google.golang.org/grpc"
)

func Serve(port string) {
	lis, err := net.Listen("tcp", ":"+port)
	if err != nil {
		log.Fatalf("failed to listen at port %s: %v", port, err)
	}
	fmt.Println("listening at port:", port)
	grpcServer := grpc.NewServer()
	log.Fatal(grpcServer.Serve(lis))
}
