package main

import "chaty/grpc"

func main() {
	port := "8080"
	hub := grpc.NewHub()
	go hub.Run()
	server := grpc.NewServer(hub)
	server.Serve(port)
}
