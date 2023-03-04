package main

import "chaty/grpc"

func main() {
	port := "8080"
	server := grpc.NewServer()
	server.Serve(port)
}
