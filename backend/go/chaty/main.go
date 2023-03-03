package main

import "chaty/grpc"

func main() {
	port := "8080"
	grpc.Serve(port)
}
